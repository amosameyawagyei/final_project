class CreateFoodItemIngredients < ActiveRecord::Migration[8.1]
  def change
    create_table :food_item_ingredients do |t|
      t.references :food_item, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
