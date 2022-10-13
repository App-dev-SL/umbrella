# Get your credentials from your Twilio dashboard, or from Canvas if you're using mine
twilio_sid = "AC28922e0822d827ee29834fe1dc6f681e"
twilio_token = "fad757a15068305da3fa1250ce6eb4d9"
twilio_sending_number = "+13126636198"

require "twilio-ruby"

# Create an instance of the Twilio Client and authenticate with your API key
twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token)

class Twilio
   class REST
     class Client
     end
    end
  
end

# Craft your SMS as a Hash literal with three keys
sms_info = {
  :from => twilio_sending_number,
  :to => "+13108741172", # Put your own phone number here if you want to see it in action
  :body => "It's going to rain today — take an umbrella!"
}

# Send your SMS!
twilio_client.api.account.messages.create(sms_info)
