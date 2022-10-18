module Types
  class MutationType < Types::BaseObject
    field :create_chatroom, mutation: Mutations::CreateChatroom
    field :update_chatroom, mutation: Mutations::UpdateChatroom
    field :resolve_chatroom, mutation: Mutations::ResolveChatroom
  end
end