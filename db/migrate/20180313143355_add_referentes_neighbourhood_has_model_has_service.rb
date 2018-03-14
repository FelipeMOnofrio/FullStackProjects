class AddReferentesNeighbourhoodHasModelHasService < ActiveRecord::Migration[5.1]
  def change
    add_reference :neighbourhood_has_wards, :ward, foreign_key:true
    add_reference :neighbourhood_has_wards, :neighbourhood, foreign_key:true
    add_reference :neighbourhood_has_wards, :service, foreign_key:true
  end
end
