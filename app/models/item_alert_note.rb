class ItemAlertNote < ApplicationRecord
  belongs_to :item
  belongs_to :alert_note
end
