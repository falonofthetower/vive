class ContactController < ApplicationController
  def send(info)
    NotificationsMailer.contact_msg(params[:email], params[:name], params[:message]).deliver_now
    redirect_to root_path
    flash[:notice] = "Email has been sent."
  end

end
