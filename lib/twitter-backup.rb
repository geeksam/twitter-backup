require "twitter-backup/version"
require 'twitter'

module SLG
  module TwitterBackup
    module_function

    def twitter
      ::Twitter
    end

    def configure_twitter(consumer_key, consumer_secret, oauth_token, oauth_token_secret)
      twitter.configure do |config|
        config.consumer_key = consumer_key
        config.consumer_secret = consumer_secret
        config.oauth_token = oauth_token
        config.oauth_token_secret = oauth_token_secret
      end
    end
  end
end

