class FoodItemIngredient < ApplicationRecord
  belongs_to :food_item
  belongs_to :ingredient
end
