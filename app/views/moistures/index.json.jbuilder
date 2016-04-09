json.array!(@moistures) do |moisture|
  json.extract! moisture, :id, :farm_id, :crop_id, :mois_read
  json.url moisture_url(moisture, format: :json)
end
