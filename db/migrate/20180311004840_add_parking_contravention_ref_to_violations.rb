class AddParkingContraventionRefToViolations < ActiveRecord::Migration[5.1]
  def change
    add_reference :violations, :parking_contraventions, foreign_key: true
  end
end
