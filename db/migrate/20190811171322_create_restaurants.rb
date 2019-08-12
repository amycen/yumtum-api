class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
