class MassNotifierMailer < ActionMailer::Base
  def notification_email(to, subject = '', body = '')
    mail(
      to: to,
      subject: subject,
      body: body
    )
  end
end
