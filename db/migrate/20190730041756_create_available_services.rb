class CreateAvailableServices < ActiveRecord::Migration[5.2]
  def change
    create_table :available_services do |t|
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :confirmed
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
