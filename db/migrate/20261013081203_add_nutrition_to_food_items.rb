class AddNutritionToFoodItems < ActiveRecord::Migration[8.1]
  def change
    add_column :food_items, :calories, :integer
    add_column :food_items, :protein, :decimal
    add_column :food_items, :carbs, :decimal
    add_column :food_items, :fat, :decimal
    add_column :food_items, :scanned_at, :datetime
  end
end
