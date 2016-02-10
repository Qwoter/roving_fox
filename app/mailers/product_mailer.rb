class ProductMailer < ActionMailer::Base
  default from: "sales@rovingfox.com"

  def contact_email(hash)
    @name       = hash['name']
    @email      = hash['email']
    @phone      = hash['phone']
    @message    = hash['message']
    @created_at = hash['created_at']
    mail(from: @email,
         to: 'sales@rovingfox.com',
         subject: 'RovingFox new client')
  end
end
