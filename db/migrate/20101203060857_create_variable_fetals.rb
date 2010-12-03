class CreateVariableFetals < ActiveRecord::Migration
  def self.up
    create_table :variable_fetals do |t|
      t.string :nombre_madre
      t.string :nombre_nacido
      t.string :rciu
      t.string :muerte_fetal
      t.string :mortalidad_fetal
      t.float :peso
      t.float :edad_gestacional
      t.string :trofismo
      t.float :calificacion_apgar
      t.float :silverman
      t.string :morbilidad_neonatal
      t.string :muerte_neonatal
      t.string :tasa_mortalidad
      t.string :muerte_perinatal

      t.timestamps
    end
  end

  def self.down
    drop_table :variable_fetals
  end
end
