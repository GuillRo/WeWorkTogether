class CreateBookingDates < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_dates do |t|
      t.date :day
      t.integer :chairs_taken
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
