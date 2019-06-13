class AddLatitudeToFlatDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :flat_details, :latitude, :float
    add_column :flat_details, :longitude, :float
  end
end
