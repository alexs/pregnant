class AddSomatometryIdInFirstTime < ActiveRecord::Migration
  def self.up
    add_column :first_times, :somatometry_id, :integer
  end

  def self.down
    remove_column :first_times, somatometry_id
  end
end
