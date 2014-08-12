json.array!(@liga_tymy_ares) do |liga_tymy_are|
  # json.extract! liga_tymy_are, :lta_tid_id, :lta_nazev, :lta_ulice, :lta_mesto, :lta_psc
  # json.url liga_tymy_are_url(liga_tymy_are, format: :json)
  liga_tymy_are.attributes.each do |key, value|
    json.set!(key, value)
  end
end
