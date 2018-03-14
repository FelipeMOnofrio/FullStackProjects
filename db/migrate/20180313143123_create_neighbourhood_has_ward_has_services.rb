class CreateNeighbourhoodHasWardHasServices < ActiveRecord::Migration[5.1]
  def change
    create_table :neighbourhood_has_ward_has_services do |t|

      t.timestamps
    end
  end
end
