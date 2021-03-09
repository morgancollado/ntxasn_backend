class AddDriverBooleanToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :driver, :boolean, default: false
  end
end
