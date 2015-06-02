class ShoppersController < ApplicationController

  skip_before_action :auth, only: [:index, :show]

  def index
    @shoppers = Shopper.all
  end

  def show
  	@shopper = Shopper.find_by(id: params["id"])
  	#@boxes = Box.where(shopper_id: params["id"])
  end

  def new
    @shopper = Shopper.new
  end

  def create
    @shopper = Shopper.create(params["shopper"])
    if @shopper.valid?
      redirect_to shoppers_path, notice: "Great, we have a new customer!!!"
    else
      render "new"
    end
  end

  def edit
  	@shopper = Shopper.find_by(id: params["id"])
  end

  def update
  	@shopper = Shopper.find_by(id: params["id"])
  	@shopper.update(params["shopper"])
   	redirect_to shoppers_path
  end

  def destroy
  	@shopper = Shopper.find_by(id: params["id"])
  	@shopper.destroy
  	redirect_to shoppers_path
  end

end
