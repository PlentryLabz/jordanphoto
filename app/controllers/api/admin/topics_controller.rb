class Api::Admin::TopicsController < Api::Admin::ApplicationController

  def index
    @topics = Topic.all
  end

end