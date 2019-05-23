class AddPropertyTypeToFlatDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :flat_details, :property_type, foreign_key: true
    add_reference :flat_details, :property_category, foreign_key: true
   

  end
end
