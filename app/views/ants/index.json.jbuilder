json.array!(@ants) do |ant|
  json.extract! ant, :id, :in_url, :slug, :clicks, :snapshot, :title
  json.url ant_url(ant, format: :json)
end
