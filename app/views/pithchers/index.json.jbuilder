json.array!(@pithchers) do |pithcher|
  json.extract! pithcher, :id, :exl2014, :exl2013, :exl2012, :exl2011
  json.url pithcher_url(pithcher, format: :json)
end
