class CreatePropertyClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :property_classes do |t|
      t.string :class
      t.string :description

      t.timestamps
    end
  end
end
