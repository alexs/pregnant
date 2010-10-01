class Lab < ActiveRecord::Migration
  def self.up
    
    add_column :laboratories, :appoiment_id, :integer
    
  end

  def self.down
  end
end
