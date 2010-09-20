class Lab < ActiveRecord::Migration
  def self.up
    
    add_column :laboratories, :user_id, :integer
    add_column :laboratories, :dependency_id, :integer
    add_column :laboratories, :patient_id, :integer    
    
  end

  def self.down
  end
end
