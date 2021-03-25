class AddClinicDropOfftoRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :clinic_dropoff, :boolean, default: false
  end
end
