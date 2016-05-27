class NotificationsMailer < ApplicationMailer
  default from: "postmaster@viveinvestmentsgroup.com"

  def contact_msg(email, name, message)
    @email = email
    @name = name
    @message = message
    mail(to: 'gustavoanalytics@gmail.com', subject: 'Someone has contacted you through the website')
  end
end
