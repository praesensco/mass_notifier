require 'slack'

module MassNotifier
  class SlackAdapter
    def initialize(subject = '', message = '')
      return if MassNotifier.configuration.slack_channel.blank?

      client = Slack::Web::Client.new
      client.auth_test
      client.chat_postMessage(
        channel: MassNotifier.configuration.slack_channel,
        as_user: true,
        attachments: [
          {
            fallback: "",
            pretext: '',
            title: subject,
            text: message,
            color: '#FF0000'
          }
        ]
      )
    end
  end
end
