class RemoveColumnsInUserReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_reviews, :reviewee_id
    remove_column :user_reviews, :reviewer_id
  end
end
