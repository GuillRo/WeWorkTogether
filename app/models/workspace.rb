class Workspace < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :service_lists
  has_many :places
  has_many :bookings, through: :places
  has_many :workspace_reviews, through: :bookings
end
