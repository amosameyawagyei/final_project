class Ingredient < ApplicationRecord
  has_many :food_item_ingredients, dependent: :destroy
  has_many :food_items, through: :food_item_ingredients
end
