class AddAttributesToPlaces < ActiveRecord::Migration[5.2]
  def change
    t.add_column :places, :number_of_chairs, :integer
    t.add_column :places, :description, :text
    t.add_column :places, :name, :string
  end
end
