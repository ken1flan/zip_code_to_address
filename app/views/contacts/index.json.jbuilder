json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :zip_code, :address, :phone_number, :mail_address
  json.url contact_url(contact, format: :json)
end
