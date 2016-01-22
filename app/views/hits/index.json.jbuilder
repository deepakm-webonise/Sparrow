json.array!(@hits) do |hit|
  json.extract! hit, :id, :latitude, :longitude, :country, :ant_id
  json.url hit_url(hit, format: :json)
end
