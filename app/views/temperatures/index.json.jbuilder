json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :farm_id, :crop_id, :temp_read
  json.url temperature_url(temperature, format: :json)
end
