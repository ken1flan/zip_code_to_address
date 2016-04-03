json.zip_codes(@zip_codes) do |zip_code|
  json.code zip_code.code
  json.prefecture_id zip_code.prefecture_id
  json.prefecture_name zip_code.prefecture.name
  json.address zip_code.address
end
