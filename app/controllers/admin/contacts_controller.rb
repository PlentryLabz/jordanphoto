class Admin::ContactsController < Admin::ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    render layout: false
  end

end