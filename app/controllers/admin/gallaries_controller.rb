class Admin::GallariesController < Admin::ApplicationController

  def index
    @gallaries = Gallary.all
  end

  def new
    @gallary = Gallary.new
    render layout: false
  end

  def create
    @gallary = Gallary.new(params[:gallary])
    @gallary.save
    redirect_to admin_gallaries_path
  end

end