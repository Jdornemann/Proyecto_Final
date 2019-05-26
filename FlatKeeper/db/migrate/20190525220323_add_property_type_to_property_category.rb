class AddPropertyTypeToPropertyCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_categories, :property_type, foreign_key: true
  end
end
