# -*- coding: undecided -*-
class CreateUltra2Sounds < ActiveRecord::Migration
  def self.up
    create_table :ultra2_sounds do |t|
       t.integer :tipo_ultrasonido
      t.float :DiametroBiparietal
      t.integer :DiametroBiparietal_Semanas_Gestacion
      t.float :CircunferenciaCefalica
      t.integer :CircunferenciaCefalica_Semanas_Gestacion
      t.float :CircunferenciaAbdominal
      t.integer :CircunferenciaAbdominal_Semana_Gestacion
      t.float :LongitudFemur
      t.integer :LongitudFemur_Semanas_Gestacion
      t.float :humero
      t.float :radio
      t.float :cubito
      t.float :tibia
      t.float :perone
      t.float :FetometriaPromedio
      t.string :PesoFetalEstimado
      t.string :percentila
      t.string :ArteriaUterinaDerecha
      t.string :nutch_AUD
      t.string :ArteriaUterinaIzquierda
      t.string :nutch_AUI
      t.string :ArteriaUmbilical
      t.string :AU_elementos
      t.string :VenaUmbilical
      t.string :vel_max_VU
      t.string :DiametroVenaUmbilical
      t.string :DuctoVenoso
      t.string :DV_elementos
      t.string :TeiIzquierdo
      t.string :TeiDerecho
      t.string :IFI
      t.string :ACM
      t.float :LongitudCervical
      t.integer :LongitudCervical_Semanas_Gestacion
      t.string :OCI
      t.string :Sludge
      t.string :PosicionPlacenta
      t.float :ILA
      t.float :HN
      t.string :HN_field
      t.float :TN
      t.string :TN_Semanas_Gestacion
      t.string :LCR
      t.float :HuesoNasal
      t.float :Cervix
      t.string :Placenta
      t.string :Cabeza
      t.string :Cara
      t.string :Columna
      t.string :Corazon
      t.string :Pulmones
      t.string :Difragma
      t.string :Riñones
      t.string :Estomago
      t.string :Vejiga
      t.string :Extremidades
      t.float :Peso_Estimado
      t.integer :patient_id
      t.integer :dependency_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :ultra2_sounds
  end
end
