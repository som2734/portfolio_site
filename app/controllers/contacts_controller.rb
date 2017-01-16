class ContactsController < ApplicationController
  def form
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = "Your message has been sent!"
    else
      flash.now[:error] = "Your message cannot be sent. Please check all information and try again."
      render 'form'
    end
  end
end
