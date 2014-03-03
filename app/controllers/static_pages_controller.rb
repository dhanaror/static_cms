class StaticPagesController < ApplicationController
	before_filter :set_static_page,:only=>[:show,:edit,:update,:destroy]
	def index
	end

	def show
	end

	def new
		@static_page = StaticPage.new
	end

	def create
		@static_page = StaticPage.new static_page_params
		@static_page.save
		redirect_to @static_page
	end

	def edit
	end

	def update
	end

	def destroy
	end

    private
	def static_page_params
		params.require(:static_page).permit(:title,:description)
	end

	def set_static_page
		@static_page = StaticPage.find params[:id]
	end
end