class CreateFirstTimes < ActiveRecord::Migration
  def self.up
    create_table :first_times do |t|
      t.integer :sistolica
      t.integer :diastolica
      t.float :peso
      t.float :temp
      t.float :fc
      t.float :fr
      t.float :fcf
      t.string :mov_fetales
      t.integer :gestados
      t.integer :partos
      t.integer :cesareas
      t.integer :abortos
      t.integer :semanas_gestacion
      t.date :fum
      t.string :edad_gestacional_ugs
      t.text :otros_diagnosticos
      t.string :quirurgicos
      t.string :transfusionales
      t.string :alergicos
      t.string :internamientos
      t.boolean :inmunizaciones_tt
      t.boolean :inmunizaciones_td
      t.boolean :inmunizaciones_influenza
      t.boolean :inmunizaciones_hepatitisb
      t.boolean :cefalea
      t.boolean :acufenos
      t.boolean :fosfenos
      t.boolean :nauseas
      t.boolean :vomito
      t.boolean :epigastralgia
      t.boolean :edema
      t.boolean :percepcion_mov_fetales
      t.boolean :actividad_uterina
      t.boolean :fiebre
      t.boolean :dolor_lumbar
      t.boolean :perdidas_trasvaginales_leucorrea
      t.boolean :perdidas_trasvaginales_liquido
      t.boolean :perdidas_trasvaginales_sangre
      t.boolean :sintomato_urinaria_disuria
      t.boolean :sintomato_urinaria_tenesmo_vesical
      t.boolean :sintomato_urinaria_poliuria
      t.integer :pezon
      t.float :fondo_uterino
      t.float :frecuencia_cardiaca_fetal
      t.integer :situacion
      t.integer :presentacion
      t.integer :dorso
      t.string :dorso_desc
      t.integer :movimientos_fetal
      t.float :tacto_vaginal_longitud
      t.float :tacto_dilatacion
      t.boolean :giordano
      t.boolean :edema_bimaleolar
      t.integer :reflejos
      t.text :resultados_laboratorio
      t.text :analisis
      t.integer :metodo_planificacion
      t.text :metodo_planificacion_pendiente
      t.text :tratamiento
      t.text :datos_alarma
      t.integer :referenciado_a
      t.date :cita_sig_consulta
      t.integer :pronostico
      t.references :user
      t.references :dependency
      t.references :patient

      t.timestamps
    end
  end

  def self.down
    drop_table :first_times
  end
end
