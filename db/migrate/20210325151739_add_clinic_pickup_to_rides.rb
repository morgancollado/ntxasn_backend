class AddClinicPickupToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :clinic_pickup, :boolean, default: false
  end
end
