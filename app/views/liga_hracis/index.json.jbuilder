json.array!(@liga_hracis) do |liga_hraci|
  # json.extract! liga_hraci, :id, :pid, :zaid, :tid, :por, :dres1, :dres2, :dres3, :jmeno, :poznamka, :prestup, :playoff, :rid
  # json.url liga_hraci_url(liga_hraci, format: :json)

  liga_hraci.attributes.each do |key, value|
    json.set!(key, value)
  end
end
