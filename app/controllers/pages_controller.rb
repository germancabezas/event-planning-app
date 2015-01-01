class PagesController < ApplicationController
  def home
    @photos = Photo.all.order(:created_at => :desc)
  end

  def about
  end

  def contact
  end
end
