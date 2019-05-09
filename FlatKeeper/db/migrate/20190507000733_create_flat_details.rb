class CreateFlatDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_details do |t|
      t.integer :room_quantity
      t.integer :bed_quantity
      t.integer :bathroom_quantity
      t.integer :dpto_size
      t.string :floor
      t.string :dpto_number
      t.string :address
      t.string :country
      t.string :city
      t.string :dpto_purpose

      t.timestamps
    end
  end
end
