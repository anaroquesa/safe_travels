class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @chatroom = Chatroom.where(user1: current_user, user2: @user).or(Chatroom.where(user1: @user, user2: current_user))
    @chatroom = @chatroom.empty? ? Chatroom.new : @chatroom.first
  end

  def edit
    @user = User.find(params[:id])
    @user = current_user
  end

  # def update
  #   @user = current_user
  #   if @user.update(profile_params)
  #     redirect_to user_path, alert: "Profile updated successfully."
  #   else
  #     render :show, status: :unprocessable_entity
  #   end
  # end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: "Profile updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:name, :summary, :photo, :email, :emergency_contact_name, :emergency_contact_number)
  # end
  def user_params
    params.require(:user).permit(:first_name, :summary, :email, :emergency_contact_name, :emergency_contact_number, :photo)
  end
end
