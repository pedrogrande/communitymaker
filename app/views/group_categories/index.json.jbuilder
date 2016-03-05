json.array!(@group_categories) do |group_category|
  json.extract! group_category, :id, :name, :description
  json.url group_category_url(group_category, format: :json)
end
