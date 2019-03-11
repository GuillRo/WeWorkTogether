class AddWorkspaceIdToWorkspaceReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :workspace_reviews, :workspace, foreign_key: true
  end
end
