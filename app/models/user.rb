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
  before_validation { self.email = email.downcase }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A\[^@\s]+@[^@\s]+\z, message: 'must be a valid email address' }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true,
                       length: { minimum: 8, message: 'must be at least 8 characters' },
                       confirmation: true
end
