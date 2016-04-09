json.array!(@crops) do |crop|
  json.extract! crop, :id, :name, :ideal_temp, :ideal_humi, :ideal_mois, :min_temp, :max_temp, :min_humi, :max_humi, :min_mois, :max_mois
  json.url crop_url(crop, format: :json)
end
