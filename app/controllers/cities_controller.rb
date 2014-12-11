class CitiesController < ApplicationController
  def index
  	@city = City.find_by name: "New Orleans"	#Will eventually search based on burrent user's city
  end
end
