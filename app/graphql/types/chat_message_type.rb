module Types
  class ChatMessageType < Types::BaseObject
    field :id, ID, null: false
    field :message, String, null: false
    field :author, Types::UserType, null: false
  end
end