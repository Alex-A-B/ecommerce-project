class User < ApplicationRecord
    has_secure_password
    
    validates :username, uniqueness: true
    validates :username, :password, presence: true, on: :create

    has_many :orders

    
end
