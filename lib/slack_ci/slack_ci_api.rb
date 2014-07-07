require 'net/http'
require 'json'

module SlackCi
  # SlackAPI Class
  class SlackCiApi
    # Initialize the URI for the team and Integration Token.
    def initialize(team, token)
      @uri = URI.parse("https://#{team}.slack.com/services/hooks/incoming-webhook?token=#{token}")
      @header = { 'Content-Type' => 'text/json' }
    end

    # Say Method to create an HTTP Post request with a JSON string as
    # the post request body.
    def say(message)
      http = Net::HTTP.new(@uri.host, @uri.port)
      http.use_ssl = true
      req = Net::HTTP::Post.new(@uri.request_uri, @header)
      req.body = message.to_json
      http.request(req).code
    end
  end
end
