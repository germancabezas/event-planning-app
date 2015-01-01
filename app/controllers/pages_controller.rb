class PagesController < ApplicationController
  def home
    @photos = Photo.all
  end

  def about
  end

  def contact
  end
end
