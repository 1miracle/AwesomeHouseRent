class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.integer :user_id
      
      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
