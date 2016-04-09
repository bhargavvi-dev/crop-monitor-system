json.array!(@farmsensors) do |farmsensor|
  json.extract! farmsensor, :id, :farm_id, :sensor_id
  json.url farmsensor_url(farmsensor, format: :json)
end
