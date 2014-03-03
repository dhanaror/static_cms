class ImagesController < ApplicationController
	before_filter :login_filter
	def index
		@images = Image.all		
		#render :nothing=>true,:layout=>true
	end

	def new
		@image = Image.new
	end	

	def create
		@image = Image.new(image_params)
		@image.save
		render :action => "list_image", :layout => true
	end
	
	def list_image
	end	

	private
	def image_params
		params.require(:image).permit(:title,:caption,:avatar)
	end	

end