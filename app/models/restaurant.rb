class Restaurant < ApplicationRecord
    has_many :restaurant_cuisines
    has_many :cuisines, through: :restaurant_cuisines
    has_many :items
    has_many :orders
end
