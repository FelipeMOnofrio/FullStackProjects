class AddReferencesServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :service_requests, foreign_key:true
    add_reference :neighbourhood_has_wards, :wards, foreign_key:true
    add_reference :neighbourhood_has_wards, :neighbourhoods, foreign_key:true
    add_reference :neighbourhood_has_wards, :services, foreign_key:true
  end
end
