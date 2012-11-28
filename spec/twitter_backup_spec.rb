require 'pathname'
lib_path = Pathname.new(File.join(File.dirname(__FILE__), *%w[.. lib]))
require lib_path + 'twitter-backup'

require lib_path + '../seekrit/app_auth' # shh! it's a seekrit.

module SLG
  describe "Sam's ghetto tweet-backing-up thing" do
    let(:consumer_key)       { SLG::TwitterBackup::SEEKRIT::CONSUMER_KEY }
    let(:consumer_secret)    { SLG::TwitterBackup::SEEKRIT::CONSUMER_SEEKRIT }
    let(:oauth_token)        { SLG::TwitterBackup::SEEKRIT::OAUTH_TOKEN }
    let(:oauth_token_secret) { SLG::TwitterBackup::SEEKRIT::OAUTH_TOKEN_SEEKRIT }

    before(:all) do
      SLG::TwitterBackup.configure_twitter(consumer_key, consumer_secret, oauth_token, oauth_token_secret)
    end

    it "should fetch a tweet" do
      latest_tweet = Twitter.user_timeline('geeksam').first
      expect(latest_tweet).to be_kind_of(Twitter::Tweet)
    end

    it "should fetch a bunch of tweets"
  end
end
