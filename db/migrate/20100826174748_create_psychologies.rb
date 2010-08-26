class CreatePsychologies < ActiveRecord::Migration
  def self.up
    create_table :psychologies do |t|
      t.date :date
      t.boolean :pregnant
      t.integer :weeks_of_gestation
      t.integer :good_health_q1
      t.integer :exhausted_q2
      t.integer :sick_q3
      t.integer :headache_q4
      t.integer :chill_q5
      t.integer :full_of_energy_q6
      t.integer :insomnia_q7
      t.integer :insomnia_all_night_q8
      t.integer :restless_nights_q9
      t.integer :satisfied_to_do_things_q10
      t.integer :enjoy_daily_activities_q11
      t.integer :bad_mood_q12
      t.integer :afraid_q13
      t.integer :sad_q14
      t.integer :nervous_q15
      t.integer :user_id
      t.integer :dependency_id

      t.timestamps
    end
  end

  def self.down
    drop_table :psychologies
  end
end
