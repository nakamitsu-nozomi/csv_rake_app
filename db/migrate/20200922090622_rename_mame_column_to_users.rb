class RenameMameColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :mame, :name
  end
end
