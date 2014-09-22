class WelcomeController < ApplicationController
  def index
    p "IN INDEX"
  end

  def fizzbuzz

    p "fizzbuzz!"*25
		# " I am responsible. creative"
  	response = Fizzbuzz.fizzbuzzed(params[:input])
  	if request.xhr?
  		render :json => response
  	end
  end
end