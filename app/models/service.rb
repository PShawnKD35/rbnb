class Service < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :available_services, dependent: :destroy
  validates :name, :address, :charge, presence: true
  validates :user, uniqueness: true
  # For Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
