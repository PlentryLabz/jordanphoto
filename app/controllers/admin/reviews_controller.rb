class Admin::ReviewsController < Admin::ApplicationController

  def index
    @reviews = Review.all
    gon.jbuilder
  end

  def create
    @review = Review.new(params[:review])
    @review.save
  end

  def update
    @review = Review.find params[:id]
    @review.update_attributes(params[:review])
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
  end

end