class CreateWorkspaceReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :workspace_reviews do |t|
      t.integer :score
      t.text :content

      t.timestamps
    end
  end
end
