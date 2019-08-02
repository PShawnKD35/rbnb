class AddRemotePhotoUrlToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :remote_photo_url, :string
  end
end
