class CreateSquares < ActiveRecord::Migration
  def self.up
    create_table :squares do |t|
      t.string :name
      t.integer :cp
      t.references :county

      t.timestamps
    end
  end

  def self.down
    drop_table :squares
  end
end
