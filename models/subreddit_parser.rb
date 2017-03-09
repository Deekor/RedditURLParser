require 'httparty'
require 'json'
class SubredditParser
  def initialize(subreddit)
    puts "Parsing: #{subreddit}"
    response = JSON.parse(HTTParty.get("https://reddit.com/r/#{subreddit}.json?limit=100").body)
    puts
    response['data']['children'].each do |post|
      puts post['data']['url']
    end
    puts
  end
end
