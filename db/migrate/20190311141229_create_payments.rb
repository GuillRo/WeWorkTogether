class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.float :price
      t.string :workspace_address
      t.references :booking, foreign_key: true
      t.string :payment_json
      t.references :renter
      t.references :owner

      t.timestamps
    end
  end
end
