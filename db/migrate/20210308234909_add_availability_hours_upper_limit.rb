class AddAvailabilityHoursUpperLimit < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :availability_hours_upper, :time
  end
end
