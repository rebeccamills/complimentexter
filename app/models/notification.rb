require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["twilio_sid"]
    auth_token =  ENV["twilio_token"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end


  def random_compliment
    [
      "Thank God you look like your mother.", 
      "Hi baby, how are you?",
      "Call me if you need help on your pecs.",
      "You've got a smile that lights up the room.",
      "How old are you? Fifteen? I hope mom has a big fence.",
      "Hi, how are you? I hope you have a big fence around the house.",
      "You have one job. Keep the boys away from your sister.",
      "Hey sister, you're beautiful.",
      "As they say in Southern Delaware, you've done good, boy."
    ].sample
    #enter compliments there
    # Generates a random compliment to send to the textee
  end
end