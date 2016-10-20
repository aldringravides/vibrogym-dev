class UsersController < ApplicationController
  before_filter :authenticate_user!
  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password params[:user]
      sign_in @user, bypass: true
      redirect_to contents_path
      flash[:notice] = "Updated Password Successfully"
    else
      render "edit"
    end
  end
end