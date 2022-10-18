class AddAuthorToChatMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :chat_messages, :user, foreign_key: true, null: false
  end
end
