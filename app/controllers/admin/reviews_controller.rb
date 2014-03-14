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
  end

  def edit
    render layout: false
  end

  def update
  end

  def destroy
  end

end