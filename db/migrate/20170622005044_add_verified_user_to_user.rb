class AddVerifiedUserToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :verified_user, :boolean, default: false
  end
end
