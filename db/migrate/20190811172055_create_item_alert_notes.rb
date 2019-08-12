class CreateItemAlertNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_alert_notes do |t|
      t.references :item, foreign_key: true
      t.references :alert_note, foreign_key: true

      t.timestamps
    end
  end
end
