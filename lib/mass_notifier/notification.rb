require 'mass_notifier/adapters/email_adapter'
require 'mass_notifier/adapters/slack_adapter'

module MassNotifier
  class Notification
    def initialize(subject = '', message = '')
      EmailAdapter.new(subject, message)
      SlackAdapter.new(subject, message)
    end
  end
end
