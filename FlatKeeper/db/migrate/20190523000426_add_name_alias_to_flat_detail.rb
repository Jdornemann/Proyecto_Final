class AddNameAliasToFlatDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :flat_details, :name_alias, :string
  end
end
