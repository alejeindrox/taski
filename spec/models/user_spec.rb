require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }
  end

  describe 'registration' do
    it 'creates a new user' do
      user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end
  end
end
