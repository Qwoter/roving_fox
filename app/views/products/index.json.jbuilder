json.array!(@products) do |product|
  json.extract! product, :id, :name, :email, :phone_number, :product, :message
  json.url product_url(product, format: :json)
end
