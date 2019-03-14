class ChangePriceToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :payments, :price
    add_column :payments, :price, :integer
    remove_column :bookings, :price
    add_column :bookings, :price, :integer
    remove_column :places, :price
    add_column :places, :price, :integer
  end
end
