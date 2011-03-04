class AddSmokingInClinicalHistory < ActiveRecord::Migration
  def self.up
    add_column :clinical_histories, :fuman_hogar, :boolean
  end

  def self.down
    remove_column :clinical_histories, :fuman_hogar
  end
end
