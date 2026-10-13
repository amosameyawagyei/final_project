class CreateFoodItems < ActiveRecord::Migration[8.1]
  def change
    create_table :food_items do |t|
      t.string :barcode
      t.string :name
      t.string :brand

      t.timestamps
    end
    add_index :food_items, :barcode, unique: true
  end
end
