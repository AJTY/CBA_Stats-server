json.array!(@liga_hracis) do |liga_hraci|
  json.extract! liga_hraci, :id
  json.url liga_hraci_url(liga_hraci, format: :json)
end
