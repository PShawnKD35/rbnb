json.service do
  # json.merge! @service
  json.extract! @service, :id, :name, :description, :address, :latitude, :longitude, :user_id, :charge, :items
  # json.items @service.items do |item|
  #   json.merge! item
  # end
end