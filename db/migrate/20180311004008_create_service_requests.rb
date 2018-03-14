class CreateServiceRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :service_requests do |t|
      t.string :service_request

      t.timestamps
    end
  end
end
