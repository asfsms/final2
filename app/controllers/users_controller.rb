class UsersController < ApplicationController

  skip_before_action :auth, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
  	@user = User.find_by(id: params["id"])
    @themes = Theme.all
  	#@boxes = Box.where(user_id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params["user"])
    @user.stylist_id = Stylist.offset(rand(Stylist.count)).first.id
    @user.save
    if @user.valid?
      redirect_to @user, notice: "Welcome!"
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
   	redirect_to @user
  end

  def destroy
  	@user = User.find_by(id: params["id"])
  	@user.destroy
  	redirect_to users_path
  end

end
