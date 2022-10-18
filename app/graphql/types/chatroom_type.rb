module Types
  class ChatroomType < Types::BaseObject
    field :id, ID, null: false
    field :label, String, null: false
    field :nature_code, Types::NatureCodeType, null: true
    field :chat_messages, [Types::ChatMessageType], null: false
    field :resolved, Boolean, null: false
  end
end