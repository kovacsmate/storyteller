json.array!(@partials) do |partial|
  json.extract! partial, :id, :text, :post_id, :background_color, :user_id
  json.url partial_url(partial, format: :json)
end
