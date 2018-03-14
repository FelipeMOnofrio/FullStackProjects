class Service < ApplicationRecord
  belongs_to :service_request
  has_many :neighbourhood_has_ward_has_services
  has_many :neighbourhoods, through: :neighbourhood_has_ward_has_services
  has_many :wards, through: :neighbourhood_has_ward_has_services
end
