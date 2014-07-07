require 'slack_ci/version'
require 'slack_ci/slack_ci_api'

# SlackCi Module
module SlackCi
  def self.new(team, token)
    SlackCiApi.new(team, token)
  end
  def self.say(message)
    SlackCiApi.say(message)
  end
end
