class AddFieldsForVariablesFetales < ActiveRecord::Migration
  def self.up
    add_column :variable_fetals, :patient_id, :integer
    add_column :variable_fetals, :user_id, :integer
  end

  def self.down
    remove_column :variable_fetals, :patient_id
    remove_column :variable_fetals, :user_id
  end
end
