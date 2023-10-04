Rails.application.routes.draw do
  if Rails.env.development?
    mount Rswag::Ui::Engine => '/api-docs'
    mount Rswag::Api::Engine => '/api-docs'
  end
  
  namespace :api, defaults: { format: :json } do
    devise_for :users, controllers: {
      registrations: 'api/registrations',
      sessions: 'api/sessions',
      passwords: 'api/passwords'
    }
  end
end
