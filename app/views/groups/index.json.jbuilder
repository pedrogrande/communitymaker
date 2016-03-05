json.array!(@groups) do |group|
  json.extract! group, :id, :group_category_id, :name, :description, :logo, :banner, :owner_id
  json.url group_url(group, format: :json)
end
