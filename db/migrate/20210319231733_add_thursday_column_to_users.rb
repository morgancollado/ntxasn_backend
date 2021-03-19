class AddThursdayColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :thursday, :boolean, default: false
  end
end
