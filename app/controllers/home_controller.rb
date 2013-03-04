require 'csv'
class HomeController < ApplicationController
before_filter :authenticate_user!, only: [:process1]
def index
end
	def process1
		binding.pry
		@message=[]
		companies = CSV.parse(params[:uploadfile].read)
		companies[1..-1].each do |row|
			r=HTTParty.get("https://linkedin.com/v1/#{row[0]}?oauth2_access_token=#{current_user.auth_key}")
			binding.pry
						
		end
		
	end
end
