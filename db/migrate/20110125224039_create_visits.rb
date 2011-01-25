# -*- coding: utf-8 -*-
class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.boolean :come_3_horas
      t.boolean :come_seno_materno
      t.boolean :succion_deglucion
      t.boolean :bano_sol
      t.boolean :evacuando
      t.boolean :orinando
      t.boolean :boca_arriba
      t.boolean :baño_diario
      t.boolean :lava_cordon
      t.boolean :tamiz_neonatal
      t.boolean :vacuna_bcg_hepatitis_b
      t.integer :amarillo
      t.boolean :materno_hidratado
      t.boolean :materno_fiebre
      t.boolean :materno_despierta_llora
      t.boolean :materno_secresion_amarilla_ojos
      t.boolean :materno_peri_umbilical_roja
      t.boolean :materno_peri_umbilical_secresion
      t.boolean :materno_succiona_seno
      t.text :cantidad_loquios
      t.text :mamas_inflamadas
      t.text :salida_calostro
      t.text :sutura_estado
      t.text :madre_emocionalmente
      t.text :madre_apoyo_familiar
      t.integer :temsion_arterial_diastolica
      t.integer :tension_arterial_sistolica
      t.integer :frecuencia_cardiaca
      t.float :temperatura
      t.references :patient
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
