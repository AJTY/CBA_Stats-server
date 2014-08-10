json.array!(@ligas) do |liga|
  json.extract! liga, :id,  :zid, :zapas, :hid, :datum, :cas, :dtid, :htid, :dr, :hr, :rozhodci, :poznamka, :komentar,  :confirm, :umpire, :od, :do, :pred, :pod, :poh, :por, :zprava, :body
  json.url liga_url(liga, format: :json)
end
