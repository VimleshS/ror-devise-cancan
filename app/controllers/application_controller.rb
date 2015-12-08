
# http://stackoverflow.com/questions/18413005/saving-custom-fields-in-devise-user-model-in-rails-4









class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?
  
  private
	  def configure_devise_params
	    # devise_parameter_sanitizer.for(:sign_up) do |u|
	    #   u.permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation)
	    # end
	    devise_parameter_sanitizer.for(:sign_up) << :role
	  end
end
