class Meeting < ActiveRecord::Base
  belongs_to :patient
  belongs_to :dependency
  belongs_to :user
end
