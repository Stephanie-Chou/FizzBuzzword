class Oauth
	def self.signin
		LinkedIn.configure do |config|
		  config.client_id     = "751n3s1mdd0pu7"
		  config.client_secret = "5PXowbmfh1IBMzqO"

		  # This must exactly match the redirect URI you set on your application's
		  # settings page. If your redirect_uri is dynamic, pass it into
		  # `auth_code_url` instead.
		  config.redirect_uri  = "http://fizzbuzzword.herokuapp.com/fizzbuzz"
		end

		oauth = LinkedIn::OAuth2.new
		url = oauth.auth_code_url
		
		response = {oauth: oauth, url: url}
	end

	def self.get_accessToken(code)
		
		oauth = LinkedIn::OAuth2.new
		access_token = oauth.get_access_token(code)

	end

	def self.get_profile(access_token)
		api = LinkedIn::API.new(access_token)
		api.profile(fields:["summary"])
	end
end