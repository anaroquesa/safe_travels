class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = current_user.chatrooms_as_user1.or(current_user.chatrooms_as_user2)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    # if @chatroom
    # else
    #   Chatroom.create
    # end
  end

  def create
    @user = User.find(params[:user_id])
    @chatroom = Chatroom.create(user1: current_user, user2: @user)
    redirect_to chatroom_path(@chatroom)
  end
end
