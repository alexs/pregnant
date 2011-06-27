class AddEdadInViolencies < ActiveRecord::Migration
  def self.up
    add_column :violencies, :edad, :string
  end

  def self.down
    remove_column :violencies, :edad
  end
end
