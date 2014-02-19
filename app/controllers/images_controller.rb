class ImagesController < ApplicationController

	def index		
		#render :nothing=>true,:layout=>true
	end
	def upload_image
		@image = Image.create(image_params)
		render :action => "list_image", :layout => true
	end

	
	def list_image
	end	

	private
	def image_params
		debugger
		params.require(params[:image]).permit(:title,:caption,:avatar)
	end	

end