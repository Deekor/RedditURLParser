require File.dirname(__FILE__) + '/models/subreddit_parser'

# Call ruby image_finder.rb {subreddit}
SubredditParser.new(ARGV[0])