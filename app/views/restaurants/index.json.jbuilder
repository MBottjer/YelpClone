json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :address, :longitude, :latitude
  json.url character_url(restaurant, format: :json)
end