class User < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :password, presence: true

  has_one_attached :photo
  has_many :itineraries
  has_many :chatrooms_as_user1, class_name: 'Chatroom', foreign_key: 'user1_id', dependent: :destroy
  has_many :chatrooms_as_user2, class_name: 'Chatroom', foreign_key: 'user2_id', dependent: :destroy
  has_many :messages, dependent: :destroy
end
