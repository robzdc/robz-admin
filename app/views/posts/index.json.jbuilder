json.array!(@posts) do |post|
  json.extract! post, :title, :category_id, :excerpt, :content, :status, :parent, :post_type, :comment_status
  json.url post_url(post, format: :json)
end
