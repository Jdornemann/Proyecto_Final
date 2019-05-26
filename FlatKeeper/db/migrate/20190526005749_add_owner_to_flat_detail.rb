class AddOwnerToFlatDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :flat_details, :owner, foreign_key: true
  end
end
