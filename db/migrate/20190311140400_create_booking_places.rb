class CreateBookingPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_places do |t|
      t.references :booking, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
