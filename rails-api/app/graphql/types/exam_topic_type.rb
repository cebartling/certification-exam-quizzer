module Types
  class ExamTopicType < Types::BaseObject
    field :id, ID, null: false
    field :certification_exam_id, Types::UuidType, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
