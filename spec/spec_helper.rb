require 'slack_ci'

RSpec.configure do |config|
	config.color = true
	config.tty = true
	config.formatter = :progress
end
