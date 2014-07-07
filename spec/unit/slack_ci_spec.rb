require 'spec_helper'

describe SlackCi do
  describe 'send' do
    it 'should post, returning 200(OK) from SlackAPI' do
      slack = SlackCi.new('slackCI', 'D7eRlWzfbmZuqL2CqtXHS4ZA')
      expect(slack.say(
        'text' => 'Sample Message', 'channel' => '#spectest'
      )).to eq('200')
    end
  end
end
