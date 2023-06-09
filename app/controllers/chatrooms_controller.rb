class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = current_user.chatrooms_as_user1.or(current_user.chatrooms_as_user2)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @user2 = User.find(params[:user2_id])
    @chatroom = Chatroom.find_or_create_by(user1: current_user, user2: @user2)
    redirect_to chatroom_path(@chatroom)
  end
end
