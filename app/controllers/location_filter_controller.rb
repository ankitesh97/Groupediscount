class LocationFilterController < ApplicationController

	

	def create
	   $search = params[:name]

       redirect_to :action => "index"
    
		
    end

    def index
      @builder = Builder.where(name: $search)
      render json: @builder
      
	end
	

	def show
     
     
    end
     
end
