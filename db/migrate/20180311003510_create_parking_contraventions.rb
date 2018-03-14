class CreateParkingContraventions < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_contraventions do |t|
      t.datetime :issue_date
      t.integer :ticket_number
      t.string :street

      t.timestamps
    end
  end
end
