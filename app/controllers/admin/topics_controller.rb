class Admin::TopicsController < Admin::ApplicationController

  def index
    @topics = Topic.all
    gon.jbuilder
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.save
  end

  def update
    @topic = Topic.find params[:id]
    @topic.update_attributes(params[:topic])
  end

  def destroy
    @topic = Topic.find params[:id]
    @topic.destroy
  end

end