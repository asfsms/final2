class HomeController < ApplicationController
skip_before_action :auth

def index
	#render :layout => false

end

end 