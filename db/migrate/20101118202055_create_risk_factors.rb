class CreateRiskFactors < ActiveRecord::Migration
  def self.up
    create_table :risk_factors do |t|
      t.boolean :toxicos_quimicos
      t.boolean :toxico_quimicos_modif
      t.boolean :trabaja_muchas_horas
      t.boolean :trabaja_muchas_horas_modif
      t.boolean :parado
      t.boolean :parado_modif
      t.boolean :objetos_pesados
      t.boolean :objetos_pesados_modif
      t.boolean :ruido
      t.boolean :ruido_modif
      t.boolean :estres
      t.boolean :estres_modif
      t.boolean :enfermedades_infecciosas
      t.boolean :enfermedades_infecciosas_modif
      t.boolean :automedica
      t.boolean :automedica_modif
      t.integer :automedica_cantidad
      t.boolean :fuma
      t.boolean :fuma_modif
      t.integer :fuma_cantidad
      t.boolean :alcohol
      t.boolean :alcohol_modif
      t.integer :alcohol_cantidad
      t.boolean :drogas
      t.boolean :drogas_modif
      t.integer :drogas_cantidad
      t.boolean :nutricion
      t.boolean :nutricion_modif
      t.integer :patient_id
      t.integer :user_id
      t.integer :dependency_id

      t.timestamps
    end
  end

  def self.down
    drop_table :risk_factors
  end
end
