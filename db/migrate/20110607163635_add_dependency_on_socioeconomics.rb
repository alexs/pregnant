class AddDependencyOnSocioeconomics < ActiveRecord::Migration
  def self.up
    add_column :socioeconomics, :dependency_id, :integer
  end

  def self.down
    remove_column :socioeconomics, :dependency_id
  end
end
