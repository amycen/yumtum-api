class AlertNote < ApplicationRecord
    has_many :item_alert_notes
    has_many :items, through: :item_alert_notes
end
