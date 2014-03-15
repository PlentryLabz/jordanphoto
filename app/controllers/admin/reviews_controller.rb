class Admin::ReviewsController < Admin::ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    render layout: false
  end

  def create
    @review = Review.new(params[:review])
    @review.save
    redirect_to admin_reviews_path
  end

  def edit
    @review = Review.find params[:id]
    render layout: false
  end

  def update
    @review = Review.find params[:id]
    @review.update_attributes(params[:review])
    redirect_to admin_reviews_path
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to admin_reviews_path
  end

end