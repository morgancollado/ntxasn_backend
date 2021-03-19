class AddWednesdayColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :wednesday, :boolean, default: false
  end
end
