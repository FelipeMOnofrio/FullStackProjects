class AddServiceAreaToServiceRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :service_requests, :service_areas, foreign_key:true
  end
end
