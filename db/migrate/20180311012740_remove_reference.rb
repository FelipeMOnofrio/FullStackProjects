class RemoveReference < ActiveRecord::Migration[5.1]
  def change

    remove_column :violations, :parking_contraventions_id
    add_reference  :parking_contraventions, :violations, foreign_key: true

  end
end
