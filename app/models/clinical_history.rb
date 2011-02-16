class ClinicalHistory < ActiveRecord::Base
  has_many :past_pregnants
  accepts_nested_attributes_for :past_pregnants, :reject_if => :all_blank

  validates_uniqueness_of :patient_id
end
