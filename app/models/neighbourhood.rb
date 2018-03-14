class Neighbourhood < ApplicationRecord
  has_many :neighbourhood_has_ward_has_services
  has_many :wards, through: :neighbourhood_has_ward_has_services
  has_many :services, through: :neighbourhood_has_ward_has_services

end
