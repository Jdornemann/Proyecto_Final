class AddPropertyClassToFlatDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :flat_details, :property_class, foreign_key: true
  end
end
