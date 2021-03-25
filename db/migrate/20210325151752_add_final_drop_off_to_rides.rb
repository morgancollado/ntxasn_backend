class AddFinalDropOffToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :final_dropoff, :boolean, default: false
  end
end
