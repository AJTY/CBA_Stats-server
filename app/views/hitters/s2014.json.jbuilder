json.array!(@record_array) do |row|
  row.each do |k, v|
    json.set!(k, v)
  end
end