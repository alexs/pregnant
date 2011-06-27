class AddDependencyNeonatals < ActiveRecord::Migration
  def self.up
    add_column :neonatals, :dependency_id, :integer
  end

  def self.down
    remove_column :neonatals, :dependency_id
  end
end
