class CreateFlatDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_details do |t|
      t.integer :room_quantity
      t.integer :bed_quantity
      t.integer :bathroom_quantity
      t.integer :area_size
      t.string :floor
      t.string :unit_number
      t.string :address
      t.string :country
      t.string :city
      t.string :business_purpose
      
      t.timestamps
    end
  end
end
