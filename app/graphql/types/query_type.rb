module Types
  class QueryType < Types::BaseObject
    field :nature_codes, [Types::NatureCodeType], null: false
    field :chatrooms, [Types::ChatroomType], null: false
    field :audits, [Types::AuditType], null: false do
      argument :userId, ID, required: false
    end

    def nature_codes
      NatureCode.all
    end

    def chatrooms
      Chatroom.all
    end

    def audits(userId: nil)
      if userId
        Audit.where(user_id: userId)
      else
        Audit.all
      end
    end
  end
end
