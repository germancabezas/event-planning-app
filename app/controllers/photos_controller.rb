class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.new(url: params[:photo][:url])
    if @photo.save
      redirect_to root_path
    end
  end
end
