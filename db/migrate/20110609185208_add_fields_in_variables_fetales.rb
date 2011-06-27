class AddFieldsInVariablesFetales < ActiveRecord::Migration
  def self.up
    add_column :variable_fetals, :dependency_id, :integer
  end

  def self.down
    remove_column :variable_fetals, :dependency_id
  end
end
