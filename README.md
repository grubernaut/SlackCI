# SlackCI

[![Gem Version](https://badge.fury.io/rb/slack_ci.svg)](http://badge.fury.io/rb/slack_ci)
[![Dependency Status](https://gemnasium.com/grubernaut/SlackCI.svg)](https://gemnasium.com/grubernaut/SlackCI)
[![Build Status](https://travis-ci.org/grubernaut/SlackCI.svg?branch=master)](https://travis-ci.org/grubernaut/SlackCI)

Slack Gem for Ruby. Includes Binary executable for instantly posting messages to slack via
the command line. 

Aims as a learning project. Patience required

## Installation

Add this line to your application's Gemfile:

    gem 'slack_ci'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slack_ci

## TODO

* Create Local Configuration File
* Create Binary from API
* Implement further tests 
* Add YardDoc
* ... 

## Running Tests / Contributing

I have created a new slack team and a new web integration just for rspec purposes of testing this gem. Please use team: ```slackCI``` and the integration token ```D7eRlWzfbmZuqL2CqtXHS4ZA``` when writing more rspec tests, or use your own team + token just ensure that the correct team + token values are set back to defaults before creating a PR. This ensures that any contributers do not have to have a Slack account to contribute and test the gem. 

### Steps to contribute: 

1. Fork it ( https://github.com/grubernaut/slack_ci/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Ensure all tests pass (`rake test`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

## Usage

Require the Gem:
```
require 'slack_ci'
```

Initialize a Slack object with your team name and Webhook Token:
```
slack = SlackCi.new('team','token')
```
Post Messages to Slack by passing a Hash to SlackCi's ```say``` method:
```
message = {
  'text' => 'This is one awesome message',
  'channel' => '#general'
}
unless slack.say(message) == '200'
  abort("Message failed to post")
end
```

To Create a webhook token for your team, start [here](https://slackci.slack.com/services/new/incoming-webhook), and select any channel for the webhook. 
Then use the generated token from Slack as your access token. You will be able to post to different channels in slack with the same token, if you specify ```channel``` inside the message hash. 

## CLI Usage

Install the Gem:
```
gem install slack_ci
```

Follow the instructions above to create a webhook token for your team.

Create a config file inside of your home directory:
```
touch ~/.slackci.yml
```
And add the following contents into the YAML configuration file. The only required information in the file is your team name, and your token. Every other parameter is optional. 
**NOTE:** If you use ```icon_emoji``` _and_ ```icon_url``` SlackCI will use the emoji configuration first, as there can only be one of either. 
```
---
team: '<team_name>'
token: '<webhook-token>'
icon_url: '<icon_url>'
icon_emoji: '<icon_emoji>'
username: '<username>'
```

Once you have the configuration file written correctly, simply run the SlackCI binary from the terminal.
```
slackci #channel this is one interesting message
```

**NOTE:** Messages do not have to be quote delimited. Anything after the channel name will be added to the message. Including any "<hyperlinks>" and ":emoji:" that you wish to send to slack. 


