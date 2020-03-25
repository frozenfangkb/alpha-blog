class DropTables < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :comments, :users
    drop_table :users
    drop_table :comments
  end
end
