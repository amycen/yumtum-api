class Item < ApplicationRecord
  belongs_to :restaurant
  has_many :item_alert_notes
  has_many :alert_notes, through: :item_alert_notes
  has_many :order_items
  has_many :orders, through: :order_items
end
