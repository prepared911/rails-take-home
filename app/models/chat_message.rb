class ChatMessage < ApplicationRecord
  belongs_to :chatroom
  belongs_to :author, class_name: "User", foreign_key: "user_id"
end