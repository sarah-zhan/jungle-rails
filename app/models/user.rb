# first_name :string
# last_name :string
# email :string
# password_digest :string
# 
#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord
  has_secure_password

  validates :email, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}, presence: true
end
