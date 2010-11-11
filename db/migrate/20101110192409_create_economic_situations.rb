class CreateEconomicSituations < ActiveRecord::Migration
  def self.up
    create_table :economic_situations do |t|
      t.string :name
      t.string :desc
      t.integer :point

      t.timestamps
    end
  end

  def self.down
    drop_table :economic_situations
  end
end
