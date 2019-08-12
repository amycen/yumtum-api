class ItemSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_id, :name, :price
  has_many :item_alert_notes
end
