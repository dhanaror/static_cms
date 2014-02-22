class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def login_filter
  	if user_signed_in?
  	else
  		redirect_to :root, :alert => "You must be logged in!"
  	end	
  end	
end
