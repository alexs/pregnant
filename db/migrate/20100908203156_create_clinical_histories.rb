class CreateClinicalHistories < ActiveRecord::Migration
  def self.up
    create_table :clinical_histories do |t|
      t.string :responsible_family
      t.string :relationship

      # Antecendentes heredofamiliaras
      t.boolean :cardiovascular_mother
      t.boolean :cardiovascular_father
      t.boolean :cardiovascular_children
      t.boolean :cardiovascular_brothers
      t.boolean :cardiovascular_husband
      t.string :cardiovascular_others
      t.boolean :diabetes_mother
      t.boolean :diabetes_father
      t.boolean :diabetes_children
      t.boolean :diabetes_brothers
      t.boolean :diabetes_husband
      t.string :diabetes_others
      t.boolean :neoplastic_mother
      t.boolean :neoplastic_father
      t.boolean :neoplastic_children
      t.boolean :neoplastic_brothers
      t.boolean :neoplastic_husband
      t.string :neoplastic_others
      t.boolean :infectious_mother
      t.boolean :infectious_father
      t.boolean :infectious_children
      t.boolean :infectious_brothers
      t.boolean :infectious_husband
      t.string :infectious_others
      t.boolean :toxicomanias_mother
      t.boolean :toxicomanias_father
      t.boolean :toxicomanias_children
      t.boolean :toxicomanias_brothers
      t.boolean :toxicomanias_husband
      t.string :toxicomanias_others
      t.boolean :malformed_mother
      t.boolean :malformed_father
      t.boolean :malformed_children
      t.boolean :malformed_brothers
      t.boolean :malformed_husband
      t.string :malformed_others

      # Antecendentes Personales No Patologicos
      t.integer :feed
      t.boolean :vitamins
      t.boolean :iron
      t.boolean :folic_acid
      t.boolean :caffeine
      t.boolean :drugs
      t.boolean :medicaments
      t.string :medicaments_details
      t.integer :alcoholism
      t.integer :smoking
      t.boolean :toxina_tetanica_1
      t.boolean :toxina_tetanica_2
      t.boolean :influenza_h1n1
      t.boolean :influenza_estacional

      # Antecendentes Personales Patologicos
      t.boolean :hipertension
      t.boolean :cardiopatia
      t.boolean :hiperlipidemia
      t.boolean :enfermedad_renal
      t.boolean :neurologicas_epilepsia
      t.boolean :psiquiatricas_depresion
      t.boolean :enfermedad_hepatica
      t.boolean :varices_flebitis
      t.boolean :funcion_tiroidea
      t.boolean :traumatismo
      t.boolean :diabetes
      t.boolean :cancer
      t.boolean :infecciosos
      t.boolean :neumopatias_asma
      t.boolean :alergias
      t.boolean :mamas
      t.boolean :cirugia_genecologica
      t.boolean :cirugias_generales
      t.boolean :complicaciones_anestesicas
      t.boolean :inmunizaciones
      t.boolean :anomalias_uterinas
      t.boolean :infertilidad
      t.boolean :transplantes
      t.boolean :geneticos

      # Antecendentes Gineco-Obstetricos
      t.integer :menarquia
      t.integer :patron_menstrual
      t.date :fum
      t.boolean :ivsa
      t.boolean :papanicolau
      t.string :papanicolau_method
      t.integer :gesta
      t.integer :partos
      t.integer :cesareas
      t.integer :abortos
      t.integer :ectopicos
      t.integer :molas

      #Datos del Embarazo
      t.date :fecha_probable_parto
      t.integer :altura_fondo_uterino
      t.integer :num_fetos
      t.integer :fcf
      t.boolean :ritmico
      t.boolean :no_audible
      t.string :grupo_rh
      t.boolean :gammaglobulina
      t.boolean :hidrops_feta
      t.boolean :anticuerpos_irregulares
      t.float :peso_anterior
      t.text :comentarios

      # Interrogatorio por aparatos y sistemas
      t.boolean :inte_ojos
      t.boolean :inte_oidos
      t.boolean :inte_nariz
      t.boolean :inte_garganta
      t.boolean :inte_digestivo
      t.boolean :inte_cardiocirculatorio
      t.boolean :inte_musculoesqueletico
      t.boolean :inte_piel_y_tegumentos
      t.boolean :inte_pulmonar
      t.boolean :inte_neurologico
      t.boolean :inte_psicologico
      t.boolean :inte_mamas
      t.string :inte_ojos_desc
      t.string :inte_oidos_desc
      t.string :inte_nariz_desc
      t.string :inte_garganta_desc
      t.string :inte_digestivo_desc
      t.string :inte_cardiocirculatorio_desc
      t.string :inte_musculoesqueletico_desc
      t.string :inte_piel_y_tegumentos_desc
      t.string :inte_pulmonar_desc
      t.string :inte_neurologico_desc
      t.string :inte_psicologico_desc
      t.string :inte_mamas_desc

      # Exploracion fisica
      t.integer :diastolica
      t.integer :sistolica
      t.float :temperatura
      t.float :peso
      t.float :talla
      t.float :masa_corporal
      t.integer :cervix
      t.boolean :fluidos
      t.boolean :sangrado
      t.boolean :dilatacion
      t.boolean :borramientos
      t.boolean :reblandecimientos
      t.boolean :cabeza_cuello_tiroides
      t.boolean :cardiorespiratorio
      t.boolean :explora_mamas
      t.boolean :abdomen
      t.boolean :extremidades
      t.boolean :genitales
      t.string :area_desc
      t.string :cabeza_cuello_tiroides_desc
      t.string :cardiorespiratorio_desc
      t.string :explora_mamas_desc
      t.string :abdomen_desc
      t.string :extremidades_desc
      t.string :genitales_desc

      # Impresion Diagnostica
      t.text :impresion_diagnostica

      # Tratamiento
      t.string :inicio_acido_folico
      t.string :inicio_multivitaminas
      t.string :inicio_suplementos
      t.string :inicio_hierro
      t.string :inicio_aspirina

      # Auditory
      t.integer :patient_id
      t.integer :user_id
      t.integer :dependency_id

      # Aparatos y sistemas

      t.timestamps
    end
  end

  def self.down
    drop_table :clinical_histories
  end
end
