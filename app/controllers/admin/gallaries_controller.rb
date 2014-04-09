class Admin::GallariesController < Admin::ApplicationController

  def index
    @gallaries = Gallary.all
    gon.jbuilder
  end

  def create
    @gallary = Gallary.new(params[:gallary])
    @gallary.save
  end

  def update
    @gallary = Gallary.find params[:id]
    @gallary.update_attributes params[:gallary]
  end

  def destroy
    @gallary = Gallary.find params[:id]
    @gallary.destroy
  end

end