class User < ApplicationRecord
    has_many :reviews, dependent: :destroy

    # used week6 user.rb code for password validation
    validates :username, presence: true
    validates :email, presence: true

    # 1. Expects a column named password_digest
    # 2. Provides an attr_accessor :password
    # 3. Provides a method named .authenticate(pwd)
    has_secure_password
end
