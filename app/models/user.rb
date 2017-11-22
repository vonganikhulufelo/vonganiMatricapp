class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :name, :email, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: {:case_sensitive => false}

end
