class WorkspaceReview < ApplicationRecord
  belongs_to :booking
  belongs_to :workspace
end
