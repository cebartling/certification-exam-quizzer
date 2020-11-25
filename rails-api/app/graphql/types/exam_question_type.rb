module Types
  class ExamQuestionType < Types::BaseObject
    field :id, ID, null: false
    field :certification_exam_id, Types::UuidType, null: false
    field :question_text, String, null: false
    field :single_answer, Boolean, null: false
    field :difficulty, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
