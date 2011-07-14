class CreateSomatometries < ActiveRecord::Migration
  def self.up
    create_table :somatometries do |t|
      t.date :date
      t.float :talla
      t.integer :sistolica
      t.integer :diastolica
      t.float :peso
      t.float :temperatura
      t.integer :fc
      t.integer :fr
      t.integer :patient_id
      t.integer :user_id
      t.integer :dependency_id

      t.timestamps
    end
  end

  def self.down
    drop_table :somatometries
  end
end
