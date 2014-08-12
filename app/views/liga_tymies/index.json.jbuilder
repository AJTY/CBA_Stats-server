json.array!(@liga_tymies) do |liga_tymy|
    liga_tymy.attributes.each do |key, value|
      json.set!(key, value)
    end
  end
