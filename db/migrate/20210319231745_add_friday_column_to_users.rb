class AddFridayColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :friday, :boolean, default: false
  end
end
