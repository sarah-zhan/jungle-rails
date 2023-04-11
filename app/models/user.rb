# first_name :string
# last_name :string
# email :string
# password_digest :string
#
# password:string virtual
# password_confirmation:string virtual
# create user class
class User < ApplicationRecord
  has_secure_password
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'must be a valid email address' }, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password_digest, presence: true, length: { minimum: 8, message: 'must be at least 8 characters' }
end
