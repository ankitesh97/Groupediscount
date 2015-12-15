class PropertySearchController < ApplicationController

	def new
		
	end

	def create
		
	   $search_property = params[:Project_name]
	   redirect_to :action => "index"
	end


	def index

	  @property = Project.where(Project_name: $search_property)
      render json: @property
      
		
	end
end
