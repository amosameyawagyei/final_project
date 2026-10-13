json.extract! food_scan, :id, :title, :notes, :food_item_id, :created_at, :updated_at
json.url food_scan_url(food_scan, format: :json)
