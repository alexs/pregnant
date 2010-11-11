class TipoVivienda < ActiveRecord::Base
  has_many :patients
end
