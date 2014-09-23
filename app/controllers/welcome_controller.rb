require 'pry'
class WelcomeController < ApplicationController
  def index
    p "IN INDEX"
  end
  
  def oauth
    response = Oauth.signin
    p "*"*100
    if request.xhr?
      render :json => response[:url].to_json
    end
  end

  def fizzbuzz
    access_token = Oauth.get_accessToken(params[:code])
    profile = Oauth.get_profile(access_token)
		# " I am responsible. creative"
  	@response = Fizzbuzz.fizzbuzzed(profile["summary"])
  	if request.xhr?
  		render :json => @response.to_json
  	else
      render :json => response.to_json
    end
  end
end