class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(profile_params)
      redirect_to profile_path, alert: "Profile updated successfully."
    else
      render :profile_edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(:name, :email)
  end
end
