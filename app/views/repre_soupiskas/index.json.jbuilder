json.array!(@repre_soupiskas) do |repre_soupiska|
  json.extract! repre_soupiska, :id
  json.url repre_soupiska_url(repre_soupiska, format: :json)
end
