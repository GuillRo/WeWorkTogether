class AddStripe < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :price
    add_monetize :places, :price, currency: { present: false }
    remove_column :bookings, :price
    add_monetize :bookings, :price, currency: { present: false }
    remove_column :payments, :price
    add_monetize :payments, :amount, currency: { present: false }
  end
end
