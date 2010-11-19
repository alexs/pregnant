class CreateRiesPars < ActiveRecord::Migration
  def self.up
    create_table :ries_pars do |t|
      t.integer :no_preparada_emb
      t.string :no_razon
      t.integer :considero_problema_grande
      t.integer :cosas_infancia
      t.integer :no_apoyo_pareja
      t.integer :no_personas_necesito
      t.integer :desconfianza_madre
      t.integer :patient_id
      t.integer :dependency_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ries_pars
  end
end
