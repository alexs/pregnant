class CreateNeonatals < ActiveRecord::Migration
  def self.up
    create_table :neonatals do |t|
      t.references :patient
      t.references :user
      t.float :peso
      t.float :edad_gestacional
      t.integer :trofismo
      t.float :calificacion_apgar
      t.float :sirveman
      t.string :morbilidad_materna
      t.string :morbilidad_neonatal
      t.integer :muerte_neonatal
      t.float :tasa_mortalidad
      t.float :muerte_perinatal

      t.timestamps
    end
  end

  def self.down
    drop_table :neonatals
  end
end
