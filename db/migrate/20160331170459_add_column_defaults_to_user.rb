class AddColumnDefaultsToUser < ActiveRecord::Migration
  def change
    change_column_default(:users, :admin, false)
    change_column_default(:users, :wallet, 0)
  end
end
