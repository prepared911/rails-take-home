# Chatroom Mutations

#     resolveChatroom($id: ID!)
#         Sets an existing Chatroom's resolved flag to true

module Mutations
    class ResolveChatroom < BaseMutation
        argument :id, ID, required: true

        type Types::ChatroomType

        def resolve(id: nil)
            chatroom = Chatroom.find(id)

            if chatroom.update(resolved: true)
                chatroom
            end
        end
    end
end
