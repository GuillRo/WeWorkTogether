class ChangeTime < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :beginning_date
    remove_column :bookings, :end_date
    add_column :bookings, :beginning_date, :date
    add_column :bookings, :end_date, :date
  end
end
