class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :email
  has_many :cuisines
  has_many :items
end
