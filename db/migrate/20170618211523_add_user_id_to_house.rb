class AddUserIdToHouse < ActiveRecord::Migration[5.0]
  def change
    change_table :houses do |t|
      t.integer :user_id
    end
    add_index :houses, :user_id
  end
end
