class ContactController < ApplicationController
  def send(info)
    NotificationsMailer.contact_msg(params[:email], params[:name], params[:message]).deliver_now
    flash[:notice] = "Email has been sent."
    redirect_to '/'
  end

end
