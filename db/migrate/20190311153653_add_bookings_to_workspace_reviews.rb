class AddBookingsToWorkspaceReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :workspace_reviews, :booking, foreign_key: true
  end
end
