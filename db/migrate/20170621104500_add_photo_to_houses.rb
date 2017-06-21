class AddPhotoToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :photo, :string
  end
end
