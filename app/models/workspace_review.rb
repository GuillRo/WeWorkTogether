class WorkspaceReview < ApplicationRecord
  belongs_to :booking
  validates :score, presence: true
end
