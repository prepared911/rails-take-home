class Chatroom < ApplicationRecord
  belongs_to :nature_code, optional: true
  has_many :chat_messages, dependent: :destroy
end