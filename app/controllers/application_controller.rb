class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_access

	def set_access
		p "set access"
	 	headers["Access-Control-Allow-Origin"] = "*"
	 	headers['Access-Control-Allow-Methods']=['OPTIONS', 'GET', 'POST', 'PUT', 'DELETE']
	end
end