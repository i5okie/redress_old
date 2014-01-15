json.array!(@products) do |product|
  json.extract! product, :id, :name, :manufacturer, :model, :description, :link
  json.url product_url(product, format: :json)
end
