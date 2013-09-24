json.array!(@posts) do |post|
  json.extract! post, :title, :category, :excerpt, :content, :status, :parent, :type, :comment_status
  json.url post_url(post, format: :json)
end
