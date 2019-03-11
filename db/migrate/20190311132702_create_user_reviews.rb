class CreateUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reviews do |t|
      t.integer :score
      t.text :content
      t.references :reviewee
      t.references :reviewer

      t.timestamps
    end
  end
end
