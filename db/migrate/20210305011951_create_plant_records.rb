class CreatePlantRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_records do |t|
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
