class AddStageToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :stage, :string, default: "initial_pickup"
  end
end
