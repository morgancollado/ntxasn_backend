class AddTuesdayColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tuesday, :boolean, default: false
  end
end
