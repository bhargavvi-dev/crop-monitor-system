json.array!(@humidities) do |humidity|
  json.extract! humidity, :id, :farm_id, :crop_id, :humi_read
  json.url humidity_url(humidity, format: :json)
end
