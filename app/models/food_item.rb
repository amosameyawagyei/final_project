class FoodItem < ApplicationRecord
  has_many :food_scans, dependent: :destroy
  has_many :food_item_ingredients, dependent: :destroy
  has_many :ingredients, through: :food_item_ingredients

  validates :name, presence: true
  validates :brand, presence: true
  validates :calories, presence: true
  validates :protein, presence: true
  validates :carbs, presence: true
  validates :fat, presence: true
  validates :scanned_at, presence: true
end
