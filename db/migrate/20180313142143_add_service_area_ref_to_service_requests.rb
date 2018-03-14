class AddServiceAreaRefToServiceRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :service_requests, :service_area, foreign_key: true
  end
end
