# Chatroom Mutations

#     createChatroom($label: String!, $natureCodeId: ID)
#         Creates a new Chatroom with a label and optionally a NatureCode
module Mutations
    class CreateChatroom < BaseMutation
        argument :label, String, required: true
        argument :natureCodeId, ID, required: false

        type Types::ChatroomType

        def resolve(label: nil, natureCodeId: nil)
            if natureCodeId
                Chatroom.create!(label: label, natureCode: NatureCode.find(natureCodeId))
            else
                Chatroom.create!(label: label)
            end
        end
    end
end
