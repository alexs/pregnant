class AddFiledsForPastPregnants < ActiveRecord::Migration
  def self.up
    add_column :past_pregnants, :sg, :string
    add_column :past_pregnants, :peso, :float
    add_column :past_pregnants, :sexo, :boolean
    add_column :past_pregnants, :vivo, :boolean
    add_column :past_pregnants, :sano, :boolean
  end

  def self.down
    remove_column :past_pregnants, :sg
    remove_column :past_pregnants, :peso
    remove_column :past_pregnants, :sexo
    remove_column :past_pregnants, :vivo
    remove_column :past_pregnants, :sano
  end
end
