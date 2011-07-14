class RemoveSometometryOfFirstTime < ActiveRecord::Migration
  def self.up
    remove_column :first_times, :sistolica
    remove_column :first_times, :diastolica
    remove_column :first_times, :peso
    remove_column :first_times, :temp
    remove_column :first_times, :fc
    remove_column :first_times, :fr
  end

  def self.down
    add_column :first_times, :sistolica, :integer
    add_column :first_times, :diastolica,:integer
    add_column :first_times, :peso, :float
    add_column :first_times, :temp, :float
    add_column :first_times, :fc  , :float
    add_column :first_times, :fr  , :float
  end
end
