class WelcomeController < ApplicationController
  def index
    p "IN INDEX"
  end

  def fizzbuzz
		# " I am responsible. creative"
  	response = Fizzbuzz.fizzbuzzed(params[:input])
  	if request.xhr?
  		render :json => response.to_json
  	end
  end
end