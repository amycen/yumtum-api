class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state, :zip_code, :phone, :email
  has_many :cuisines
  has_many :items
end
