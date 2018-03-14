class NeighbourhoodHasWardHasService < ApplicationRecord
  belongs_to :ward
  belongs_to :neighbourhood
  belongs_to :service
end
