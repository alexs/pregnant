class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :expedient, :curp
      t.string :cuip, :firstname, :lastname1, :lastname2, :null => false
      t.date :birthday, :null => false
      t.boolean :gender, :null => false
      t.references :user, :dependency, :bornstate, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
