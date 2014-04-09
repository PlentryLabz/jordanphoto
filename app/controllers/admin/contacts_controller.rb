class Admin::ContactsController < Admin::ApplicationController

  def index
    @contacts = Contact.all
    gon.jbuilder
  end

end