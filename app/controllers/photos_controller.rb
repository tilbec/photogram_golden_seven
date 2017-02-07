class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    @photo = Photo.find(@id)
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("/photos")
  end

  def destroy
    id = params[:id]
    photo = Photo.find(id)
    photo.destroy

    redirect_to("/photos")
  end

  def edit_form
    id = params[:id]
    @photo = Photo.find(id)
  end

  def update_row
    @id = params[:id]
    new_caption = params[:the_caption]
    new_source = params[:the_source]

    @photo = Photo.find(@id)
    @photo.source = new_source
    @photo.caption = new_caption

    @photo.save

    redirect_to action: "show", id: @id
  end

end
