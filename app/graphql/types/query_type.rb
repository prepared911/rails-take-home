module Types
  class QueryType < Types::BaseObject
    field :nature_codes, [Types::NatureCodeType], null: false
    field :chatrooms, [Types::ChatroomType], null: false

    def nature_codes
      NatureCode.all
    end

    def chatrooms
      Chatroom.all
    end
  end
end
