json.array!(@comments) do |comment|
  json.extract! comment, :id, :title, :message, :product_id
  json.url comment_url(comment, format: :json)
end
