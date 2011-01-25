class ModifiedVariablesFetales < ActiveRecord::Migration
  def self.up
    remove_column :variable_fetals, :peso
    remove_column :variable_fetals, :edad_gestacional
    remove_column :variable_fetals, :trofismo
    remove_column :variable_fetals, :calificacion_apgar
    remove_column :variable_fetals, :silverman
    remove_column :variable_fetals, :morbilidad_neonatal
    remove_column :variable_fetals, :muerte_neonatal
    remove_column :variable_fetals, :tasa_mortalidad
    remove_column :variable_fetals, :muerte_perinatal
  end

  def self.down
  end
end
