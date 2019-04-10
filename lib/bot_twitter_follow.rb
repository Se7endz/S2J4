require 'dotenv'
require 'twitter'

Dotenv.load('.env')

def login_twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET_KEY"]
  config.access_token        = ENV["TWITTER_API_TOKEN"]
  config.access_token_secret = ENV["TWITTER_API_SECRET_TOKEN"]
	end
client
end
def follow_bonjour_monde
    following_users = login_twitter.search("#bonjour_monde", result_type: "recent").take(25).map { |tweet| tweet.user }
 
 unless following_users != "@BendifallahO"
 	login_twitter.follow(following_users)
     end
end

follow_bonjour_monde
