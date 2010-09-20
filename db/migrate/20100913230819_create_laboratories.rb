class CreateLaboratories < ActiveRecord::Migration
  def self.up
    create_table :laboratories do |t|
      t.date :date
      t.date :date_next_consult
      t.string :presumptive_diagnosis
      t.string :applicant_doctor
      t.string :hemoglobina
      t.string :hematocrito
      t.string :cmhc
      t.string :leucocitos
      t.string :cuenta_diferencial
      t.string :linfocitos
      t.string :monocitos
      t.string :eosinofilos
      t.string :basofilos
      t.string :neut_segmen
      t.string :neut_banda
      t.string :alteraciones
      t.string :reticulocitos
      t.string :plaquetas
      t.string :sed_globular
      t.string :grupo_sanguineo
      t.string :factor_rh
      t.string :t_protrombina
      t.string :t_parcial_tromb
      t.string :glucosa
      t.string :hb_glicosilada
      t.string :urea
      t.string :acido_urico
      t.string :creatinina
      t.string :colesterol_total
      t.string :trigliceridos
      t.string :hdl
      t.string :ldl
      t.string :bilirrubina_total
      t.string :bilirubina_directa
      t.string :bilirrubina_indirecta
      t.string :alat_tgp
      t.string :asat_tgo
      t.string :f_alcalina
      t.string :vdrl
      t.string :antiestreptolisinas
      t.string :factor_reumatoide
      t.string :proteina_c_reactiva
      t.string :prueba_embarazo
      t.string :inmunologia_otros
      t.string :coproparasitoscopico1
      t.string :coproparasitoscopico2
      t.string :coproparasitoscopico3
      t.string :fisico_quimico
      t.string :color
      t.string :ph
      t.string :densidad
      t.string :glucosa
      t.string :cetona
      t.string :proteina
      t.string :nitrito
      t.string :bilirrubina
      t.string :hemoglobina
      t.string :sedimento
      t.string :leucocitos
      t.string :eritrocitos
      t.string :cel_epiteliales
      t.string :bacterias
      t.string :cristales
      t.string :cilindros
      t.string :exudado_gram
      t.string :basiloscopia_baar1
      t.string :basiloscopia_baar2
      t.string :basiloscopia_baar3
      t.string :cultivo
      t.string :microbiologia_otros
      t.string :tolerancia_glucosa_ayuno
      t.string :tolerancia_glucosa_1hora
      t.string :tolerancia_glucosa_2horas
      t.string :tolerancia_glucosa_observaciones
      t.string :num_registro
      t.string :nombre
      t.date :fecha_reporte

      t.timestamps
    end
  end

  def self.down
    drop_table :laboratories
  end
end
