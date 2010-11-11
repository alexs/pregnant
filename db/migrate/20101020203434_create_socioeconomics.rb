class CreateSocioeconomics < ActiveRecord::Migration
  def self.up
    create_table :socioeconomics do |t|
      t.integer :ocupation
      t.integer :ingreso
      t.integer :egreso
      t.integer :economic_situation_id
      t.integer :tipo_vivienda_id
      t.integer :dormitorios
      t.string :calificacion
      t.integer :patient_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :socioeconomics
  end
end
