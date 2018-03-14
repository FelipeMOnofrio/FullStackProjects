class CreateServiceAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :service_areas do |t|
      t.string :service_area

      t.timestamps
    end
  end
end
