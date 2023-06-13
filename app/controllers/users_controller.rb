class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @chatroom = Chatroom.where(user1: current_user, user2: @user).or(Chatroom.where(user1: @user, user2: current_user))
    @chatroom = @chatroom.empty? ? Chatroom.new : @chatroom.first
  end

  def create
    @user = User.new(user_params)
    @User.save!
  end

  def edit
    @user = User.find(params[:id])
     @user = current_user
  end

  def user_update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      redirect_to user_path(@user)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :summary, :emergency_contact_name, :emergency_contact_number, :photo)
  end
end
