class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.references :patient
      t.references :dependency
      t.references :user
      t.datetime :starttime
      t.string :test
      t.boolean :all_day, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
