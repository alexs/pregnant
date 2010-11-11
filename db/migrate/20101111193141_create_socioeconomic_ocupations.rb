class CreateSocioeconomicOcupations < ActiveRecord::Migration
  def self.up
    create_table :socioeconomic_ocupations do |t|
      t.string :name
      t.integer :point

      t.timestamps
    end
  end

  def self.down
    drop_table :socioeconomic_ocupations
  end
end
