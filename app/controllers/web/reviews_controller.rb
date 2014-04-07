class Web::ReviewsController < Web::ApplicationController

  def index
    @reviews = Review.all
  end

end