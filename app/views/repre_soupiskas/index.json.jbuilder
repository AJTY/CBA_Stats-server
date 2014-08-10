json.array!(@repre_soupiskas) do |repre_soupiska|
  json.extract! repre_soupiska, :id, :sou_id, :sou_catid, :sou_rid, :sou_post, :sou_rok, :sou_active
  json.url repre_soupiska_url(repre_soupiska, format: :json)
end
