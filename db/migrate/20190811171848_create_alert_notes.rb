class CreateAlertNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :alert_notes do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
