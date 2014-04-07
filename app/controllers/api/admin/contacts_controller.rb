class Api::Admin::ContactsController < Api::Admin::ApplicationController

  def index
    @contacts = Contact.all
  end

end