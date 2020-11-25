module Types
  class CertificationExamType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :exam_code, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :exam_questions, Types::ExamQuestionType.connection_type, null: false
  end
end
