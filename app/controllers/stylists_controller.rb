class StylistsController < ApplicationController

  def index
    @stylists = Stylist.all
  end

  def show
  	@stylist_expertises = Stylist_expertise.where(stylist_id: params["id"])
    @stylist = Stylist.find_by(id: params["id"])
    @styles = Style.all
    @users = Users.where(stylist_id: params["id"])
  end

end
