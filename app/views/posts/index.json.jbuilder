json.array!(@posts) do |post|
  json.extract! post, :id, :title, :user_id, :comment_id
  json.url post_url(post, format: :json)
end
