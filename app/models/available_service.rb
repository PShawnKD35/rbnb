class AvailableService < ApplicationRecord
  belongs_to :service
  belongs_to :user
  validates :start_time, :end_time, presence: true
  validates :start_time, :end_time, uniqueness: { scope: :service }
  # validates :start_date, date: { after: Proc.new { Date.current } }, on: :create
end
