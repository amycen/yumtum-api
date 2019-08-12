class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :status
      t.float :subtotal
      t.float :tips
      t.float :tax

      t.timestamps
    end
  end
end
