class Place < ApplicationRecord
  belongs_to :workspace
  has_many :booking_places
end
