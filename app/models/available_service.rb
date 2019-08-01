class AvailableService < ApplicationRecord
  belongs_to :service
  has_many :bookings, dependent: :destroy
  validates :start_time, :end_time, presence: true
  validates :start_time, :end_time, uniqueness: { scope: :service }
  # validates :start_date, date: { after: Proc.new { Date.current } }, on: :create
end
