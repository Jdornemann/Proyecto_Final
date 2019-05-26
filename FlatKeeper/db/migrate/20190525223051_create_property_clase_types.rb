class CreatePropertyClaseTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :property_clase_types do |t|
      t.string :clase_type
      t.string :description

      t.timestamps
    end
  end
end
