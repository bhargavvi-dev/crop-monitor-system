json.array!(@farmers) do |farmer|
  json.extract! farmer, :id, :name, :email, :address, :contact
  json.url farmer_url(farmer, format: :json)
end
