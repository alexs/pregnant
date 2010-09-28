class CreatePastPregnants < ActiveRecord::Migration
  def self.up
    create_table :past_pregnants do |t|
      t.integer :year
      t.string :pregnant_type
      t.string :resolve
      t.references :clinical_history

      t.timestamps
    end
  end

  def self.down
    drop_table :past_pregnants
  end
end
