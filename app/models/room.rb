class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :address, presence: true, uniqueness: true
  validates :equipment, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
