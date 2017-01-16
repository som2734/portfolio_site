class ContactsController < ApplicationController
  def form
    @contact = Contact.new
  end

  def create
    from = params[:contact][:from]
    subject = params[:contact][:subject]
    message = params[:contact][:message]
    # ContactMailer.send_contact(from,subject,message).deliver_now
    ContactMailerJob.perform_later(from,subject,message)
    flash[:notice] ="Your message has been sent!"
    render 'form'
  end
  #   @contact = Contact.new(params[:contact])
  #   @contact.request = request
  #   if @contact.deliver
  #     flash.now[:success] = "Your message has been sent!"
  #   else
  #     flash.now[:error] = "Your message cannot be sent. Please check all information and try again."
  #     render 'form'
  #   end
  # end
end
