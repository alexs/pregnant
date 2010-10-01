class Fecha < ActiveRecord::Migration
  def self.up
    
    add_column :laboratories, :date, :date
    
  end

  def self.down
  end
end
