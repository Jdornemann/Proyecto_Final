class CreatePropertyCaterories < ActiveRecord::Migration[5.2]
  def change
    create_table :property_caterories do |t|
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
