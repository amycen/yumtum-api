class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :subtotal, :tax, :tips, :user_id, :created_at, :restaurant_id
  has_many :items
  belongs_to :restaurant
end
