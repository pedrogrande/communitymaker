json.array!(@photos) do |photo|
  json.extract! photo, :id, :user_id, :group_id, :event_id, :image, :caption
  json.url photo_url(photo, format: :json)
end
