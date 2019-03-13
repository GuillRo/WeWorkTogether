class ChangeStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :status
    add_column :bookings, :status, :string
  end
end
