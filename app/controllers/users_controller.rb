class UsersController < ApplicationController

  skip_before_action :auth, only: [:index, :show]

  def index
    @users = User.all
  end

  def show
  	@user = User.find_by(id: params["id"])
  	#@boxes = Box.where(user_id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params["user"])
    if @user.valid?
      redirect_to users_path, notice: "Great, we have a new customer!!!"
    else
      render "new"
    end
  end

  def edit
  	@user = User.find_by(id: params["id"])
  end

  def update
  	@user = User.find_by(id: params["id"])
  	@user.update(params["user"])
   	redirect_to users_path
  end

  def destroy
  	@user = User.find_by(id: params["id"])
  	@user.destroy
  	redirect_to users_path
  end

end
