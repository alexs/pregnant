class AddFieldsForFirstTime < ActiveRecord::Migration
  def self.up
    add_column :first_times, :date, :date
  end

  def self.down
    remove_column :first_times, :date
  end
end
