class CreateViolencies < ActiveRecord::Migration
  def self.up
    create_table :violencies do |t|
      t.datetime :fecha
      t.integer :edad
      t.integer :estudios
      t.string :registro
      t.integer :civil
      t.integer :ocupacion
      t.boolean :esta
      t.boolean :deseaba
      t.boolean :planeo
      t.boolean :acepto
      t.integer :numhijos
      t.integer :pardeseaba
      t.integer :parplaneo
      t.integer :paracepto
      t.boolean :actual
      t.boolean :meses
      t.boolean :violencia
      t.integer :relacion_años
      t.integer :relacion_meses
      t.integer :relacion_semanas
      t.integer :relacion_dias
      t.integer :edadpar
      t.boolean :avientaobjeto
      t.boolean :tuerza
      t.boolean :amenace
      t.boolean :destruir
      t.boolean :fuerzafisica
      t.boolean :menosprecie
      t.boolean :celoso
      t.boolean :sospeche
      t.boolean :insulte
      t.boolean :proposito
      t.boolean :machete
      t.boolean :miedo
      t.boolean :domestico
      t.boolean :asfixiar
      t.boolean :relaciones
      t.boolean :matarla
      t.boolean :puño
      t.boolean :dispuesta
      t.boolean :patee
      t.boolean :cuchillo
      t.boolean :estomago
      t.boolean :jalonee
      t.boolean :pistola
      t.boolean :fea
      t.boolean :cosa
      t.boolean :mueble
      t.boolean :rifle
      t.integer :veces
      t.boolean :violenta
      t.boolean :insulta
      t.boolean :aguanta
      t.boolean :anteriores
      t.integer :fisica
      t.integer :emocional
      t.integer :user_id
      t.integer :dependency_id
      t.integer :patient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :violencies
  end
end
