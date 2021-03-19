class AddSundayToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :sunday, :boolean, default: false
  end
end
