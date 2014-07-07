require 'spec_helper'

describe SlackCi do
	describe "send" do
		it "should post, returning 200(OK) from SlackAPI" do
			slack = SlackCLi.new('team','thisIsATokenRight?')
			assert_equal '200',slack.say({:text => "Sample Message", :channel => "#general"})
		end
	end
end
