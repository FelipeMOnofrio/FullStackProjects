class Drop < ActiveRecord::Migration[5.1]
  def change
    drop_table :neighbourhood_has_wards
  end
end
