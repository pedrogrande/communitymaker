class Enquiry < ActiveRecord::Base
  validates :name, :email, :enquiry_type, :message, presence: true
end
