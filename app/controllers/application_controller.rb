class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
  	cookies[:user_id]
  end

  def current_user
  	@current_user = Usuario.find_by(id: cookies[:user_id])
  end

  def authenticate
  	unless logged_in? && current_user
  		flash[:error] = 'Debe iniciar sesión'
  		redirect_to '/sesiones/new' 
  	end
  end
end
