class LandingpageController < ApplicationController
	
	def index
		redirect_to home_index_path if current_farmer 
	end

end
