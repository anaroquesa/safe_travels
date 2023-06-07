class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.integer :user1
      t.integer :user2
      t.timestamps
    end
    add_foreign_key :chatrooms, :users, column: :user1
    add_foreign_key :chatrooms, :users, column: :user2
  end
end
