class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :available_service
  # validates :available_service, uniqueness: true
end
