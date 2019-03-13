class Booking < ApplicationRecord
  has_one :workspace_review
  has_one :user_review
  has_many :booking_places
  has_one :payment
  belongs_to :user
  has_many :places, through: :booking_places

  def find_workspace
    places.first.workspace
  end
end
