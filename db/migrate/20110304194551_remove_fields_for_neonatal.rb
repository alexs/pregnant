class RemoveFieldsForNeonatal < ActiveRecord::Migration
  def self.up
    remove_column :neonatals, :tasa_mortalidad
    remove_column :neonatals, :muerte_perinatal
  end

  def self.down
    add_column :neonatals, :tasa_mortalidad, :float
    add_column :neonatals, :muerte_perinatal, :float
  end
end
