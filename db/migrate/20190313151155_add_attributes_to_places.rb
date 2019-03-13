class AddAttributesToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :number_of_chairs, :integer
    add_column :places, :description, :text
    add_column :places, :name, :string
  end
end
