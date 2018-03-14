class ServiceArea < ApplicationRecord
  has_many :service_requests
  validates :service_area, presence: true
end
