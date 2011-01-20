class ChangeNameOnUsersField < ActiveRecord::Migration
  def self.up
    rename_column :users, :group_id_id, :group_id
    rename_column :users, :dependency_id_id, :dependency_id
  end

  def self.down
  end
end
