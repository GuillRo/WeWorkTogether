class Place < ApplicationRecord
  belongs_to :workspace
  has_many :booking_places
  has_many :bookings, through: :booking_places
  has_many :booking_dates

  monetize :price_cents

  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :number_of_chairs, presence: true
end
