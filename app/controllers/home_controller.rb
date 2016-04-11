class HomeController < ApplicationController
	before_action :authenticate_farmer!
  def index
  	@farmers = Farmer.all
  end
end
