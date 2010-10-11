class FirstTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :dependency
  belongs_to :patient
end
