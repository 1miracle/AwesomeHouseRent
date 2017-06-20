class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :city
      t.string :address
      t.integer :rooms
      t.integer :sleep_places
      t.float :total_area
      t.boolean :kitchen
      t.boolean :heating
      t.boolean :conditioner
      t.boolean :animals_allowed
      t.boolean :wi_fi
      t.integer :floor
      t.integer :number_of_floors
      t.decimal :price_per_day
      t.decimal :price_per_month
      t.text :description
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end
