class AddViolationToParkingContraventions < ActiveRecord::Migration[5.1]
  def change
    add_reference :parking_contraventions, :violation, foreign_key: true
  end
end
