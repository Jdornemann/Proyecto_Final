class AddCategoryToPropertyCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :property_categories, :category, :string
  end
end
