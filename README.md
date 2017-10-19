# MassNotifier

Send notification to multiple channels with

```ruby
MassNotifier::Notification.new('Warning', 'Something has happened')
```

## Installation

```ruby
gem 'mass_notifier', git: 'https://github.com/praesensco/mass_notifier.git'
```

Create config/initializers/slack.rb
```ruby
Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end
```

Create config/initializers/mass_notifier.rb

```ruby
MassNotifier.configure do |config|
  config.slack_channel = ENV['MASS_NOTIFIER_SLACK_CHANNEL']
  config.emails = (ENV['MASS_NOTIFIER_EMAILS'] || '').split(',')
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mass_notifier


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
