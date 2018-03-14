class CreateNeighbourhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighbourhoods do |t|
      t.string :neighbourhood

      t.timestamps
    end
  end
end
