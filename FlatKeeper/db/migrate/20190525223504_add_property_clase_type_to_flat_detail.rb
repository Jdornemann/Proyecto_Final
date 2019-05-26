class AddPropertyClaseTypeToFlatDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :flat_details, :property_clase_type, foreign_key: true
  end
end
