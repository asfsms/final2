class ShoppersController < ApplicationController

  def index
    @shoppers = Shopper.all
  end

  def show
  	@shopper = Shopper.find_by(id: params["id"])
  	@boxes = Box.where(shopper_id: params["id"])
  end

  def new
    @shopper = Shopper.new
  end

  def create
	Shopper.create(params["shopper"])
  	redirect_to shoppers_url
  end

  def edit
  	@shopper = Shopper.find_by(id: params["id"])
  end

  def update
  	@shopper = Shopper.find_by(id: params["id"])
  	@shopper.update(params["shopper"])
   	redirect_to shoppers_url
  end

  def destroy
  	@shopper = Shopper.find_by(id: params["id"])
  	@shopper.delete
  	redirect_to shoppers_url
  end

end
