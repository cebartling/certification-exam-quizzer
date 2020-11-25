module Types
  class ExamQuestionType < Types::BaseObject
    field :id, ID, null: false
    field :question_text, String, null: false
    field :single_answer, Boolean, null: false
    field :difficulty, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :responses, Types::ExamQuestionResponseType.connection_type, null: false
    field :topics, Types::ExamTopicType.connection_type, null: false
    field :certification_exam, Types::CertificationExamType, null: false
  end
end
