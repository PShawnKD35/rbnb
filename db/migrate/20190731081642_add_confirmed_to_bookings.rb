class AddConfirmedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :confirmed, :boolean, default: false
    remove_column :available_services, :confirmed, :boolean
    remove_column :available_services, :user_id
  end
end
