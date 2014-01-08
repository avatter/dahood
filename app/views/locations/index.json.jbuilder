json.array!(@locations) do |location|
  json.extract! location, :id, :strasse, :hausnummer, :plz, :stadt, :latitude, :longitude
  json.url location_url(location, format: :json)
end
