json.extract! product, :id, :name, :brand, :description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
