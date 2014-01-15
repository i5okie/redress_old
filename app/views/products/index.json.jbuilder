json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :model, :manufacturer, :link, :category
  json.url product_url(product, format: :json)
end
