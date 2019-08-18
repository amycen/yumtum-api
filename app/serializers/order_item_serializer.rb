class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item_id, :quantity
  belongs_to :order
end
