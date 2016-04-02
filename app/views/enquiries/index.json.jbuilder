json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :id, :name, :enquiry_type, :message, :email
  json.url enquiry_url(enquiry, format: :json)
end
