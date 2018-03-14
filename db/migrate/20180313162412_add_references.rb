class AddReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :neighbourhood_has_ward_has_services, :ward, foreign_key:true
    add_reference :neighbourhood_has_ward_has_services, :neighbourhood, foreign_key:true
    add_reference :neighbourhood_has_ward_has_services, :service, foreign_key:true
  end
end
