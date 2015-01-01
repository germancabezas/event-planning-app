class Api::V1::PhotosController < ApplicationController
  def show
    @photo = Photo.find_by(id: params[:id])
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.update(photo_params)
    render 'show'
  end

  private

  def photo_params
    params.require(:photo).permit(:name, :description)
  end
end
