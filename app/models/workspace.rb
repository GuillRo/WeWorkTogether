class Workspace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :photos
  has_many :service_lists
  has_many :places
  has_many :bookings, through: :places
  has_many :workspace_reviews, through: :bookings

  def average
    return 0 if workspace_reviews.empty?

    workspace_reviews.inject(0) { |sum, x| sum += x.score } / workspace_reviews.length
  end

  def minimum
    minimum = 0
    places.each do |place|
      if minimum.zero?
        minimum = place.price_cents
      elsif minimum > place.price_cents
        minimum = place.price_cents
      end
    end
    return minimum
  end
end
