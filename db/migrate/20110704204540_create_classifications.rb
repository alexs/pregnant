class CreateClassifications < ActiveRecord::Migration
  def self.up
    create_table :classifications do |t|
      t.integer :age
      t.float :weight
      t.float :height
      t.integer :socioeconomic_level
      t.integer :maritalstatus_id
      t.integer :schooling_id
      t.integer :attitude_to_pregnancy
      t.integer :parity
      t.integer :last_pregnant
      t.integer :consecutives_aborts
      t.integer :prior_cesarean
      t.integer :childbirth_lower_37_weeks
      t.integer :preeclampsia_eclampsia
      t.integer :children_low_25_grams
      t.integer :children_more_40_grams
      t.integer :perinatals_deads
      t.integer :children_with_congenitals_defects
      t.integer :last_surgery
      t.integer :history_diabetes
      t.integer :history_hypertension
      t.integer :hemoglobin
      t.integer :rh_factor
      t.integer :smoking
      t.integer :alcoholism
      t.integer :addiction
      t.integer :diabetes
      t.integer :hypertension_cronic
      t.integer :preeclampsia
      t.integer :epilepsia
      t.integer :cardiopatia
      t.integer :colagenopatia
      t.integer :nefropatia
      t.integer :nefropatias
      t.integer :endocrinopatias
      t.integer :consanguinidad
      t.integer :amenaza_aborto
      t.integer :amenaza_parto_pretermino
      t.integer :ruptura_membranas
      t.integer :patient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :classifications
  end
end
