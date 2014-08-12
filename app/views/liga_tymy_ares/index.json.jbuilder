json.array!(@liga_tymy_ares) do |liga_tymy_are|
  json.extract! liga_tymy_are, :id
  json.url liga_tymy_are_url(liga_tymy_are, format: :json)
end
