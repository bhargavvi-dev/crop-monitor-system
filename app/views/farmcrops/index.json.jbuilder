json.array!(@farmcrops) do |farmcrop|
  json.extract! farmcrop, :id, :farm_id, :crop_id, :from_date, :to_date
  json.url farmcrop_url(farmcrop, format: :json)
end
