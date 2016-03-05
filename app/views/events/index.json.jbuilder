json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :name, :description, :date, :start_time, :end_time, :street, :suburb, :state, :postcode, :country
  json.url event_url(event, format: :json)
end
