class Admin::Gallaries::PhotosController < Admin::ApplicationController

  def create
    p_attr = params[:photo]
    p_attr[:pic] = params[:photo][:pic].first if params[:photo][:pic].kind_of?(Array)
    @photo = Gallary.find(params[:gallary_id]).photos.build(p_attr)
    @photo.save
    render json: @photo.to_jq_upload
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render nothing: true
  end
end