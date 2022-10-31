class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :username, uniqueness: true
    validates :email, uniqueness: true
    validates :password, presence: true
end
