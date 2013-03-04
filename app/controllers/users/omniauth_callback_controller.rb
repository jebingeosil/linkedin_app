class Users::OmniauthCallbackController < ApplicationController
	
	def linkedin
		auth=request.env["omniauth.auth"]
		user=User.find_by_user_id(auth.uid)
		binding.pry
		unless user
			user=User.new
			user.email = auth.info.email
			user.password = Time.now.to_i
			user.user_id=auth.uid
			user.auth_key=auth.credentials.token
			user.auth_secret=auth.credentials.secret
			user.save
		end
		sign_in(user)
		redirect_to root_path,:notice=>"you have logged in"
		
	end
end
