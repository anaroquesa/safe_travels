class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chatrooms = Chatroom.where(user1: current_user).or(Chatroom.where(user2: current_user))
    @users = User.where(id: @chatrooms.pluck(:user1, :user2).flatten.uniq)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = @chatroom.messages # Retrieve messages for the chatroom
  end

  # def create
  #   @user = User.find(params[:user_id])
  #   @chatroom = Chatroom.create(user1: current_user, user2: @user)

  #   redirect_to chatroom_path(@chatroom)
  # end

  def create
    @user = User.find(params[:user_id])
    @chatroom = Chatroom.find_or_create_by(user1: current_user, user2: @user)
    redirect_to chatroom_path(@chatroom)
  end
end
