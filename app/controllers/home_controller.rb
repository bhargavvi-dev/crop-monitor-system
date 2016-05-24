class HomeController < ApplicationController
	before_action :authenticate_farmer!
  def fatch
  	@data = Temperature.all
	render :json => @data
  end
end
