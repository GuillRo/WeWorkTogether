class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :workspace, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
