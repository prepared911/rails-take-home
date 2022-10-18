# Chatroom Mutations

#     updateChatroom($id: ID!, $label: String, $natureCodeId: ID)
#         Updates an existing Chatroom's label and/or NatureCode
module Mutations
    class UpdateChatroom < BaseMutation
        argument :id, ID, required: true
        argument :label, String, required: false
        argument :natureCode, Types::NatureCodeInput, required: false

        type Types::ChatroomType

        def resolve(id: nil, **args)
            chatroom = Chatroom.find(id)

            if chatroom.update(args)
                chatroom
            end
        end
    end
end
