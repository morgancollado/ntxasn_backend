class RemovesAvailabilityDaysFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :availability_days
  end
end
