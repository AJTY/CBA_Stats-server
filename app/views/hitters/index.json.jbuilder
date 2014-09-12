# @record_array.each_key { ||} do |pid|
#   json.set!(:pid, pid)
# end


# json.array!(@liga_tymy_ares) do |@record_array|
#   json.extract! @record_array, :pid
#   json.url liga_tymy_are_url(liga_tymy_are, format: :json)
#   end



# json.array!(@liga_tymies) do |liga_tymy|
#   liga_tymy.attributes.each do |key, value|
#     json.set!(key, value)
#   end
# end



json.array!(@record_array) do |row|
  row.each do |k, v|
    json.set!(k, v)
  end
end

# results.first.keys.each do |key|
#   key
# end

# @my_array.each do |key, value|
#   json.set!(key, value)
#   end