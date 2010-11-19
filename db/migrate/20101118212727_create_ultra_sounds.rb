class CreateUltraSounds < ActiveRecord::Migration
  def self.up
    create_table :ultra_sounds do |t|
      t.float :DiametroBiparietal
      t.float :CircunferenciaCefalica
      t.float :CircunferenciaAbdominal
      t.float :LongitudFemur
      t.float :humero
      t.float :radio
      t.float :cubito
      t.float :tibia
      t.float :perone
      t.float :FetometriaPromedio
      t.string :PesoFetalEstimado
      t.string :percentila
      t.string :ArteriaUterinaDerecha
      t.string :ArteriaUterinaIzquierda
      t.string :ArteriaUmbilical
      t.string :VenaUmbilical
      t.string :DiametroVenaUmbilical
      t.string :DuctoVenoso
      t.string :TeiIzquierdo
      t.string :TeiDerecho
      t.string :IFI
      t.string :ACM
      t.string :LongitudCervical
      t.string :PosicionPlacenta
      t.string :ILA
      t.integer :patient_id
      t.integer :dependency_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :ultra_sounds
  end
end
