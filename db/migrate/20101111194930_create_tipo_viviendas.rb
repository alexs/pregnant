class CreateTipoViviendas < ActiveRecord::Migration
  def self.up
    create_table :tipo_viviendas do |t|
      t.string :name
      t.integer :point

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_viviendas
  end
end
