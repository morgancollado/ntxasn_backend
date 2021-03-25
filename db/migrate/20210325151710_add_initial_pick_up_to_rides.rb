class AddInitialPickUpToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :initial_pickup, :boolean, default: false
  end
end
