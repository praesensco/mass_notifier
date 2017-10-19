require 'mass_notifier/mailers/mass_notification_mailer'

module MassNotifier
  class EmailAdapter
    def initialize(subject = '', message = '')
      return if MassNotifier.configuration.emails.blank?

      MassNotifier.configuration.emails.each do |email|
        MassNotifierMailer.notification_email(email, subject, message).deliver_now
      end
    end
  end
end
