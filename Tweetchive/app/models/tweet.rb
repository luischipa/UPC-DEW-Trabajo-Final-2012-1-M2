class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'ChU6cX0sebvkKLadkaSkg'
      config.consumer_secret = 'lgAhzW4xCtkD4nqHeA3RkrCTOP0n7RYBBS2dnB23I'
      config.oauth_token = '729680329-LujVFpzqMXh2yI98yTl4V4mdam0QfAjgRuqtpet8'
      config.oauth_token_secret = 'jHw8o6EZXmDQ6iSEvTwrwvFbV7F5mCYgCecnUIRc'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end


end
