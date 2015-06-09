class BoxesController < ApplicationController
	before_filter :load_theme

	def new
	  @boxes = @theme.boxes.build
	  @boxes.user_id = current_user.id
	  @boxes.stylist_id = current_user.stylist_id
	  @boxes.date = Time.now.year
	  @boxes.save
	  redirect_to current_user, notice: "Thank you, your package is on the way..."
	end

	def create
	  @boxes = @theme.boxes.build(params[:boxes])
	  redirect_to root_url
	end

	private
	def load_theme
	  @theme = Theme.find(params[:theme_id])
	end

  # def index
  #   @boxes = Box.all
  # end

  # def new
  #   @box = Box.new(:theme_id => params[:theme_id])
  # end

  # def create
  #   @box = Box.create(params["box"])
  #   redirect_to current_user
  # end

end
