class AddFieldsForUltrasounds < ActiveRecord::Migration
  def self.up
    add_column :ultra3_sounds, :ducto_venoso_txt, :string
    add_column :ultra2_sounds, :ducto_venoso_txt, :string
  end

  def self.down
  end
end
