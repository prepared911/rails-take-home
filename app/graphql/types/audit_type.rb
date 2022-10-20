module Types
    class AuditType < Types::BaseObject
      field :timestamp, String, null: false
      field :user, Types::UserType, null: false
      field :variables, String, null: false
      field :raw, String, null: false
    end
  end