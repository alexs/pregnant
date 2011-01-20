class CreateDependencies < ActiveRecord::Migration
  def self.up
    create_table :dependencies do |t|
      t.string :name
      t.integer :dependency_id
      t.string :clave
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dependencies
  end
end
