json.user @user
json.service do
  # json.merge! @user.service
  json.extract! @user.service, :id, :name, :description, :address, :charge, :user_id, :latitude, :longitude, :category, :updated_at, :items if @user.service.present?
end