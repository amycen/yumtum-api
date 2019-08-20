class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item_id, :quantity
  belongs_to :order
  belongs_to :item
end
