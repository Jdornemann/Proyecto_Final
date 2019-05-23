class AddProperTypeToPropertyCaterories < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_caterories, :property_type, foreign_key: true
  end
end
