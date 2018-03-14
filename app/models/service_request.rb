class ServiceRequest < ApplicationRecord
  belongs_to :service_area
  has_many :service
  validates :service_request, presence: true
end
