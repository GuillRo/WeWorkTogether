class CreateServiceLists < ActiveRecord::Migration[5.2]
  def change
    create_table :service_lists do |t|
      t.references :service, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
