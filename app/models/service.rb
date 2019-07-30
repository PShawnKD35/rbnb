class Service < ApplicationRecord
  belongs_to :user
  has_many :available_services, :items, dependent: :destroy
  validates :address, :charge, presence: true
  validates :user, uniqueness: true
end
