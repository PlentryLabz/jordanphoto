class Admin::GallariesController < Admin::ApplicationController

  def index
  end

  # def new
  #   @gallary = Gallary.new
  #   render layout: false
  # end

  # def create
  #   @gallary = Gallary.new(params[:gallary])
  #   @gallary.save
  #   redirect_to admin_gallaries_path
  # end

  # def edit
  #   @gallary = Gallary.find params[:id]
  #   @photos = @gallary.photos
  #   @photo = Photo.new
  # end

  # def update
  #   @gallary = Gallary.find params[:id]
  #   @gallary.update_attributes params[:gallary]
  #   redirect_to edit_admin_gallary_path(@gallary)
  # end

  # def destroy
  #   @gallary = Gallary.find params[:id]
  #   @gallary.destroy
  #   redirect_to admin_gallaries_path
  # end

end