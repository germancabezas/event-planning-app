class PhotosController < ApplicationController
  before_action :authenticate_vendor!, :except => [:show]

  def index
    @photos = current_user.photos
  end

  def show
    @photo = Photo.find_by(params[:id])
  end

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
