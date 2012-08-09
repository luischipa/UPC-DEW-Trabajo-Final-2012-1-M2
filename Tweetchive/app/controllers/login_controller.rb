class LoginController < ApplicationController
 def index
   twitter = Twitter::Base.new(@username,@password)
  end
end
