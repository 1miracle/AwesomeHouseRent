class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :city
      t.integer :rooms
      t.integer :sleep_places
      t.boolean :kitchen
      t.boolean :heating
      t.boolean :conditioner
      t.boolean :animals_allowed
      t.boolean :wi_fi
      t.decimal :min_price_per_day
      t.decimal :max_price_per_day
      t.decimal :min_price_per_month
      t.decimal :max_price_per_month
      t.integer :rating

      t.timestamps
    end
  end
end
