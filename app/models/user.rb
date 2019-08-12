class User < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    has_secure_password
end
