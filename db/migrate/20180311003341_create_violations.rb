class CreateViolations < ActiveRecord::Migration[5.1]
  def change
    create_table :violations do |t|
      t.string :violation

      t.timestamps
    end
  end
end
