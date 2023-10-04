class Api::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    super do |resource|
    end
  end
end
