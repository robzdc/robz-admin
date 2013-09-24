json.array!(@categories) do |category|
  json.extract! category, :name, :description, :parent, :status
  json.url category_url(category, format: :json)
end
