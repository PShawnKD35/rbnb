json.service do
  # json.merge! @service
  json.extract! @service, :id, :name, :description, :address, :latitude, :longitude, :user, :charge, :items, :category
  json.available_services @available_services
  # json.items @service.items do |item|
  #   json.merge! item
  # end
end