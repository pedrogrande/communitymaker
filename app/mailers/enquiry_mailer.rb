class EnquiryMailer < ApplicationMailer
  default from: "pete@coderfactory.com"

  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail to: @enquiry.email, subject: 'Your enquiry has been received'
  end

  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail to: "pete@coderfactory.com", subject: "An enquiry has been received"
  end
end
