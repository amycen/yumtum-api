class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :subtotal, :tax, :tips, :user_id, :created_at
  has_many :order_items
end
