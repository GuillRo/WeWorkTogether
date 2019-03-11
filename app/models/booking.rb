class Booking < ApplicationRecord
  has_many :workspace_reviews
  has_many :booking_places
  has_one :payment
  belongs_to :user
end
