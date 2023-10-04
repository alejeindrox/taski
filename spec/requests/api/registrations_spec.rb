require 'rails_helper'

RSpec.describe Api::RegistrationsController, type: :controller do
  describe 'POST #create' do
    it 'creates a new user' do
      post '/api/users', params: { user: { email: 'user@example.com', password: 'password', password_confirmation: 'password' } }
      expect(response).to have_http_status(:created)
    end
  end
end
