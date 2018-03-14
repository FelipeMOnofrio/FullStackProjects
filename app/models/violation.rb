class Violation < ApplicationRecord
  has_many :parking_contraventions
  validates :violation, presence: true
end
