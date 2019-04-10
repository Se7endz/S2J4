require 'dotenv'
require 'twitter'

Dotenv.load('.env')

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET_KEY"]
  config.access_token        = ENV["TWITTER_API_TOKEN"]
  config.access_token_secret = ENV["TWITTER_API_SECRET_TOKEN"]
end

# ligne qui permet de tweeter sur ton compte
client.update('First one : Done !!!!')