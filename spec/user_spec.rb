require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'returns false password and password_confirmation fields not match' do
      user = User.new(first_name: 'sarah', last_name: 'Kay', email: '123@123.com', password: 'password',
                      password_confirmation: 'password2')
      expect(user.valid?).to eq(false)
    end
    it 'returns true password and password_confirmation fields match' do
      user = User.new(first_name: 'sarah', last_name: 'Kay', email: '123@123.com', password: 'password2',
                      password_confirmation: 'password2')
      expect(user.valid?).to eq(true)
    end
    it 'Emails must be unique' do
      user1 = User.create(email: '123@gmail.com')
      user2 = User.new(email: '123@gmail.com')
      expect(user2.valid?).to eq(false)
    end
    it 'should require email' do
      user = User.new(email: nil)
      expect(user).not_to be_valid
    end
    it 'should require first name' do
      user = User.new(first_name: nil)
      expect(user).not_to be_valid
    end
    it 'should require last name' do
      user = User.new(last_name: nil)
      expect(user).not_to be_valid
    end
    it 'must have a minimum length of 8 for password' do
      user = User.new(password: '123', password_confirmation: '123')
      expect(user.valid?).to eq(false)
    end
  end
end
