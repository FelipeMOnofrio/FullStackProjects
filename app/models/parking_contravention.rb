class ParkingContravention < ApplicationRecord
  belongs_to :violation
  validates :issue_date, :ticket_number, :street, :violation_id ,presence: true
  validates :ticket_number, numericality: {greater_than: 0}
end
