class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.url = params[:file]
    if @photo.save
      redirect_to root_path
    end
  end
end
