class AdminsController < ApplicationController
  before_action :admin?

  def admin?
    if !current_user.admin?
      redirect_to login_path
      flash[:notice] = "You do not have access to this section"
    end
  end
end
