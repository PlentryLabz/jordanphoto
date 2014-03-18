class Admin::Gallaries::PhotosController < Admin::ApplicationController

  def index
    @gallary = Gallary.find params[:gallary_id]
    @photos = @gallary.photos

    render json: @photos.map{|p| p.to_jq_upload }
  end

  def create
    p_attr = params[:photo]
    p_attr[:pic] = params[:photo][:pic].first if params[:photo][:pic].kind_of?(Array)
    @photo = Gallary.find(params[:gallary_id]).photos.build(p_attr)
    @photo.save
    render json: @photo.to_jq_upload
  end
end