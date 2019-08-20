class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :restaurant_id
  has_many :alert_notes
  belongs_to :restaurant
end
