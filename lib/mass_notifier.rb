require "mass_notifier/version"
require 'mass_notifier/notification'

module MassNotifier
  class Configuration
    attr_accessor :slack_channel
    attr_accessor :emails

    def initialize
      @slack_channel = ''
      @emails = []
    end
  end

  class << self
    attr_accessor :configuration
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end
end
