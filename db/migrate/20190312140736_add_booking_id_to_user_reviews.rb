class AddBookingIdToUserReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_reviews, :booking, foreign_key: true
  end
end
