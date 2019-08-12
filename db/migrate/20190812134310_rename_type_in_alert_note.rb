class RenameTypeInAlertNote < ActiveRecord::Migration[5.2]
  def change
    rename_column :alert_notes, :type, :alert_type
  end
end
