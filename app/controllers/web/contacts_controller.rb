class Web::ContactsController < Web::ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]
    if @contact.save
      render nothing: true
    else
      render json: @contact.errors, status: 422
    end
  end

end