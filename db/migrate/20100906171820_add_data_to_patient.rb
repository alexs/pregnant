class AddDataToPatient < ActiveRecord::Migration
  def self.up
    add_column :patients, :ocupation_id, :integer, :null => false
    add_column :patients, :maritalstatus_id, :integer, :null => false
  end

  def self.down
    remove_column :patients, :ocupation_id
    remove_column :patients, :maritalstatus_id
  end
end
