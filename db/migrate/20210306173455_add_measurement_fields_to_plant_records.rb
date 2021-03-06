class AddMeasurementFieldsToPlantRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :plant_records, :notes, :text
  end
end
