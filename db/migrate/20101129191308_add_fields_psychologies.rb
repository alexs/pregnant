class AddFieldsPsychologies < ActiveRecord::Migration
  def self.up
    add_column :psychologies, :q3, :integer
    add_column :psychologies, :q4, :integer
    add_column :psychologies, :qt, :integer
  end

  def self.down
    remove_column :psychologies, :q3
    remove_column :psychologies, :q4
    remove_column :psychologies, :qt
  end
end
