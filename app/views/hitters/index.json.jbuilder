@record_array.each do |key, value|
  json.set!(key, value)
end
