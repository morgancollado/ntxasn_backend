class ChangeAvailabilityHoursToAvailabilityHoursLowerLimit < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :availability_hours_lower, :time
  end
end
