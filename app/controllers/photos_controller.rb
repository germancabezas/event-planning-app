class PhotosController < ApplicationController
  before_action :authenticate_vendor!, :except => [:show, :create] #current_user isn't available in create which is triggered via ajax

  def index
    @photos = current_user.photos
  end

  def show
    @photo = Photo.find_by(id: params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(url: params[:file], user_id: params[:user_id])
    user = User.find_by(id: params[:user_id])
    if user.vendor? && @photo.save
      redirect_to root_path
    end
  end

  def edit
    @photo = Photo.find_by(id: params[:id])
  end

end
