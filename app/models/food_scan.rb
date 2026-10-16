class FoodScan < ApplicationRecord
  belongs_to :food_item

  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
end
