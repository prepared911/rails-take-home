class User < ApplicationRecord
  has_many :chat_messages
end