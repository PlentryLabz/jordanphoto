class Api::Admin::ReviewsController < Api::Admin::ApplicationController

  def index
    @reviews = Review.all
  end

end