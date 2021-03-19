class AddSaturdayToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :saturday, :boolean, default: false
  end
end
