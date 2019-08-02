class AddDateToAvailableServices < ActiveRecord::Migration[5.2]
  def change
    add_column :available_services, :date, :date
    add_column :bookings, :date, :date
  end
end
