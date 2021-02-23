class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.datetime :date_time
      t.string :location_to
      t.string :location_from
      t.string :appointment_type
      t.integer :passenger_id
      t.integer :driver_id

      t.timestamps
    end
    add_foreign_key :rides, :users, column: :passenger_id, primary_key: :id
    add_foreign_key :rides, :users, column: :driver_id, primary_key: :id 
  end
end
