class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_shopper  
  before_action :auth

  def auth
    if current_shopper
    else
      redirect_to new_session_url
    end
  end

  def current_shopper
    Shopper.find_by(id: session["shopper_id"]) 
  end

end
