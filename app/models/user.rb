class User < ApplicationRecord
  has_many :chat_messages
  has_many :audits
end