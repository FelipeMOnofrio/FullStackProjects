class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.datetime :sr_date

      t.timestamps
    end
  end
end
