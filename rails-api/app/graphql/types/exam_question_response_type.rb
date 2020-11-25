module Types
  class ExamQuestionResponseType < Types::BaseObject
    field :id, ID, null: false
    field :exam_question_id, Types::UuidType, null: false
    field :response_text, String, null: false
    field :explanation_text, String, null: true
    field :correct, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
