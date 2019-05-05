class CreateFlatOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_owners do |t|
      t.string :Buldingname
      t.string :address
      t.string :region
      t.string :country
      t.integer :rooms_number
      t.integer :beds_number
      t.integer :baths_number

      t.timestamps
    end
  end
end
