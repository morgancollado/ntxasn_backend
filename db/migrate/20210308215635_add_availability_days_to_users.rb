class AddAvailabilityDaysToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :availability_days, :string
  end
end
