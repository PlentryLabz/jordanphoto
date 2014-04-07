class Web::TopicsController < Web::ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find params[:id]
  end

end