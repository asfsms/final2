class ThemesController < ApplicationController
  
  skip_before_action :auth, only: [:index, :show]

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find_by(id: params["id"])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.create(params["theme"])
    if @theme.valid?
      redirect_to themes_url, notice: "Box theme created!"
    else
      render "new"
    end
  end

end
