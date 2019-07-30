class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :service, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # validates :name, presence: true

  def password_required?
    !self.open_id
  end
  
  def email_required?
    !self.open_id
  end
end
