json.extract! plant_record, :id, :latitude, :longitude, :created_at, :updated_at
json.url plant_record_url(plant_record, format: :json)
