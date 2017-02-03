class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

    render("new_form.html.erb")
  end

  def show
    p = Photo.find(params[:id])
    @photo = p.source
    @caption = p.caption
    render("show.html.erb")
  end

  def create_row
    render("create_row.html.erb")
  end

end
