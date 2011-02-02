class AddAndModifiedFieldsForClinicalHistory < ActiveRecord::Migration
  def self.up
    remove_column :clinical_histories, :papanicolau
    add_column :clinical_histories, :papanicolau_normal, :boolean
    add_column :clinical_histories, :papanicolau_anormal, :boolean
    add_column :clinical_histories, :papanicolau_anormal_fecha, :date
    add_column :clinical_histories, :papanicolau_normal_fecha, :date
    remove_column :clinical_histories, :dilatacion
    add_column :clinical_histories, :dilatacion, :integer
    add_column :clinical_histories, :longitud, :integer
    add_column :clinical_histories, :consistencia, :integer
    add_column :clinical_histories, :posicion, :string
    rename_column :clinical_histories, :gen_fetido, :vaginal_fetido
    add_column :clinical_histories, :leucorrea_fetido, :boolean
    add_column :clinical_histories, :leucorrea_tipo, :integer
    add_column :clinical_histories, :sangrado_tipo, :integer
    add_column :clinical_histories, :fondo_saco, :integer
    add_column :clinical_histories, :dolor_utero, :boolean
  end

  def self.down
    remove_column :clinical_histories, :fondo_saco
    remove_column :clinical_histories, :dolor_utero
    remove_column :clinical_histories, :sangrado_tipo
    remove_column :clinical_histories, :leucorrea_tipo
    remove_column :clinical_histories, :leucorrea_fetido
    rename_column :clinical_histories, :vaginal_fetido, :gen_fetido
    remove_column :clinical_histories, :posicion
    remove_column :clinical_histories, :consistencia
    remove_column :clinical_histories, :longitud
    remove_column :clinical_histories, :dilatacion
    add_column :clinical_histories, :dilatacion, :boolean
    remove_column :clinical_histories, :papanicolau_normal
    remove_column :clinical_histories, :papanicolau_anormal
    add_column :clinical_histories, :papanicolau, :boolean
    remove_column :clinical_histories, :papanicolau_anormal_fecha
    remove_column :clinical_histories, :papanicolau_normal_fecha
  end
end
