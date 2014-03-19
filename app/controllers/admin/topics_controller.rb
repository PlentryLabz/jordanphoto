class Admin::TopicsController < Admin::ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
    render layout: false
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.save
    redirect_to admin_topics_path
  end

  def edit
    @topic = Topic.find params[:id]
    render layout: false
  end

  def update
    @topic = Topic.find params[:id]
    @topic.update_attributes(params[:topic])
    redirect_to admin_topics_path
  end

  def destroy
    @topic = Topic.find params[:id]
    @topic.destroy
    redirect_to admin_topics_path
  end

end