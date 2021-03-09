class RemovesAvailabilityHoursFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :availability_hours
  end
end
