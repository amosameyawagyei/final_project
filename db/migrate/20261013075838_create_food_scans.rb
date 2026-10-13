class CreateFoodScans < ActiveRecord::Migration[8.1]
  def change
    create_table :food_scans do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
