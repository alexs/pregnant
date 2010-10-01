class CreateAppoiments < ActiveRecord::Migration
  def self.up
    create_table :appoiments do |t|
      t.date :date
      t.date :date_next_consult
      t.string :presumptive_diagnosis
      t.string :applicant_doctor
      t.integer :dependency_id
      t.integer :patient_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :appoiments
  end
end
