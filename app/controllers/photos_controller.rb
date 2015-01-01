class PhotosController < ApplicationController
  before_action :authenticate_vendor!

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(url: params[:file], user_id: params[:user_id])
    if @photo.save
      redirect_to root_path
    end
  end
end
