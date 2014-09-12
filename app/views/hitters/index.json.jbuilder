# @record_array.each_key { ||} do |pid|
#   json.set!(:pid, pid)
# end


# json.array!(@liga_tymy_ares) do |@record_array|
#   json.extract! @record_array, :pid
#   json.url liga_tymy_are_url(liga_tymy_are, format: :json)
#   end



@record_array.each do |row|
    row.each do |k, v|
    puts "column #{k} contains #{v}"
    json.set!(k, v)
    end
end

# results.first.keys.each do |key|
#   key
# end