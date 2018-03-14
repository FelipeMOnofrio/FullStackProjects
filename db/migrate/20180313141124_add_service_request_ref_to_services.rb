class AddServiceRequestRefToServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :service_request, foreign_key: true
  end
end
