class Place < ApplicationRecord
  belongs_to :workspace
  has_many :booking_places
  has_many :bookings, through: :booking_places
end
