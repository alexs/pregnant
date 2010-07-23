class CreateCounties < ActiveRecord::Migration
  def self.up
    create_table :counties do |t|
      t.string :name
      t.references :state

      t.timestamps
    end
  end

  def self.down
    drop_table :counties
  end
end
