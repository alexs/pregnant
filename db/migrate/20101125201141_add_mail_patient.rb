class AddMailPatient < ActiveRecord::Migration
  def self.up
    add_column :patients, :mail, :string
    add_column :patients, :date, :date
  end

  def self.down
    remove_column :patients, :mail
    remove_column :patients, :date
  end
end
