class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :beginning_date
      t.datetime :end_date
      t.float :price
      t.boolean :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
