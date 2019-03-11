class CreateWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workspaces do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :address
      t.string :title
      t.string :website
      t.string :phone_number
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
