json.array!(@farms) do |farm|
  json.extract! farm, :id, :farmer_id, :location, :description
  json.url farm_url(farm, format: :json)
end
