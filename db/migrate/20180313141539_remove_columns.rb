class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :parking_contraventions, :violations_id
    remove_column :service_requests, :service_areas_id
    remove_column :services, :service_requests_id

  end
end
