class ModifiedClinicalHistory < ActiveRecord::Migration
  def self.up
    remove_column :clinical_histories, :grupo_rh
    add_column :clinical_histories, :grupo_sanguineo, :string
    add_column :clinical_histories, :rh, :string
    add_column :clinical_histories, :alcoholism_times, :string
    add_column :clinical_histories, :cigarretes_day, :string
    add_column :clinical_histories, :ivsa, :string
    add_column :clinical_histories, :num_parejas, :string
    remove_column :clinical_histories, :ritmico
    remove_column :clinical_histories, :no_audible
    remove_column :clinical_histories, :inte_ojos
    remove_column :clinical_histories, :inte_oidos
    remove_column :clinical_histories, :inte_nariz
    remove_column :clinical_histories, :inte_garganta
    remove_column :clinical_histories, :inte_piel_y_tegumentos
    remove_column :clinical_histories, :inte_pulmonar
    remove_column :clinical_histories, :inte_psicologico
    remove_column :clinical_histories, :inte_mamas
    remove_column :clinical_histories, :no_audible_desc
    remove_column :clinical_histories, :inte_ojos_desc
    remove_column :clinical_histories, :inte_oidos_desc
    remove_column :clinical_histories, :inte_nariz_desc
    remove_column :clinical_histories, :inte_garganta_desc
    remove_column :clinical_histories, :inte_piel_y_tegumentos_desc
    remove_column :clinical_histories, :inte_pulmonar_desc
    remove_column :clinical_histories, :inte_psicologico_desc
    remove_column :clinical_histories, :inte_mamas_desc
    add_column :clinical_histories, :gen_prurito, :boolean
    add_column :clinical_histories, :gen_ardor, :boolean
    add_column :clinical_histories, :gen_leucorrea, :boolean
    add_column :clinical_histories, :gen_fetido, :boolean
    add_column :clinical_histories, :gen_sangrado_vaginal, :boolean
    add_column :clinical_histories, :salida_liquido_vaginal, :boolean
    add_column :clinical_histories, :urinario, :string
    add_column :clinical_histories, :ardor, :boolean
    add_column :clinical_histories, :polaquiuria, :boolean
    add_column :clinical_histories, :tenesmo_vesical, :boolean
  end

  def self.down
    remove_column :clinical_histories, :grupo_sanguineo
    remove_column :clinical_histories, :rh
    add_column :clinical_histories, :grupo_rh, :string
    remove_column :clinical_histories, :alcoholism_times
    remove_column :clinical_histories, :cigarretes_day
    remove_column :clinical_histories, :ivsa
    remove_column :clinical_histories, :num_parejas
    add_column :clinical_histories, :ritmico, :boolean
    add_column :clinical_histories, :no_audible, :boolean
    add_column :clinical_histories, :inte_ojos, :boolean
    add_column :clinical_histories, :inte_oidos, :boolean
    add_column :clinical_histories, :inte_nariz, :boolean
    add_column :clinical_histories, :inte_garganta, :boolean
    add_column :clinical_histories, :inte_piel_y_tegumentos, :boolean
    add_column :clinical_histories, :inte_pulmonar, :boolean
    add_column :clinical_histories, :inte_psicologico, :boolean
    add_column :clinical_histories, :inte_mamas, :boolean
    add_column :clinical_histories, :no_audible_desc, :string
    add_column :clinical_histories, :inte_ojos_desc, :string
    add_column :clinical_histories, :inte_oidos_desc, :string
    add_column :clinical_histories, :inte_nariz_desc, :string
    add_column :clinical_histories, :inte_garganta_desc, :string
    add_column :clinical_histories, :inte_piel_y_tegumentos_desc, :string
    add_column :clinical_histories, :inte_pulmonar_desc, :string
    add_column :clinical_histories, :inte_psicologico_desc, :string
    add_column :clinical_histories, :inte_mamas_desc, :string
    remove_column :clinical_histories, :gen_prurito
    remove_column :clinical_histories, :gen_ardor
    remove_column :clinical_histories, :gen_leucorrea
    remove_column :clinical_histories, :gen_fetido
    remove_column :clinical_histories, :gen_sangrado_vaginal
    remove_column :clinical_histories, :salida_liquido_vaginal
    remove_column :clinical_histories, :urinario
    remove_column :clinical_histories, :ardor
    remove_column :clinical_histories, :polaquiuria
    remove_column :clinical_histories, :tenesmo_vesical
  end
end
