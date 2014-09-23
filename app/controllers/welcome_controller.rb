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
  	@summary = Fizzbuzz.fizzbuzzed(profile["summary"])

    profile["positions"]["all"].each do |position|
      unless position.summary.nil?
        position["summary"] = Fizzbuzz.fizzbuzzed(position["summary"])
      end
    end
    @positions = profile["positions"]["all"]
  	if request.xhr?
      p "xhr"
  		render :json => @response.to_json
  	else
      p "not xhr"
      @summary
      @positions = profile["positions"]["all"]

    end
  end
end