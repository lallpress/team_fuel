json.extract! inventory, :id, :itemnum, :orgnum, :quantity, :expires, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
