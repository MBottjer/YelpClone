class AddEmailToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :owner_email, :string
  end
end
