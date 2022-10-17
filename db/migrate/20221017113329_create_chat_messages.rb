class CreateChatMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_messages do |t|
      t.string :message, null: false
      t.belongs_to :chatroom, null: false, foreign_key: true
      t.timestamps
    end
  end
end
