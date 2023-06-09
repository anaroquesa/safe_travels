class Chatroom < ApplicationRecord
  belongs_to :user1, foreign_key: :user1, class_name: 'User'
  belongs_to :user2, foreign_key: :user2, class_name: 'User'
  has_many :messages, dependent: :destroy
end
