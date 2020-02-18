class PhotoController < ApplicationController
  def index
    @user = User.joins(:photos)
    @users = User.find(params[:id])
    @photos = Photo.joins(:comments)
    @photos = @users.photos

  end
end
