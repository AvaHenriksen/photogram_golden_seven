class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

    render("new_form.html.erb")
  end

  def show
    p = Photo.find(params[:id])
    @photo_source= p.source
    @caption = p.caption
    render("show.html.erb")

  end

  def create_row
    p = Photo.new
    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save

    render("create_row.html.erb")
  end

  def destroy
    d = Photo.find(params[:id])

    d.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    p = Photo.find(params[:id])
    @photo_source = p.source
    @caption = p.caption
    render("edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:id])

    p.source = params[:the_new_source]
    p.caption = params[:the_new_caption]

    p.save

    redirect_to("http://localhost:3000/photos/#{params[:id]}")
  end

end
