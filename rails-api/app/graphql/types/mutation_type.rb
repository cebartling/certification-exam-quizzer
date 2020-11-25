module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :delete_user, mutation: Mutations::DeleteUser
    field :update_user, mutation: Mutations::UpdateUser

    field :create_exam_topic, mutation: Mutations::CreateExamTopic
    field :delete_exam_topic, mutation: Mutations::DeleteExamTopic
    field :update_exam_topic, mutation: Mutations::UpdateExamTopic

    field :create_exam_question_response, mutation: Mutations::CreateExamQuestionResponse
    field :delete_exam_question_response, mutation: Mutations::DeleteExamQuestionResponse
    field :update_exam_question_response, mutation: Mutations::UpdateExamQuestionResponse

    field :create_exam_question, mutation: Mutations::CreateExamQuestion
    field :delete_exam_question, mutation: Mutations::DeleteExamQuestion
    field :update_exam_question, mutation: Mutations::UpdateExamQuestion

    field :create_certification_exam, mutation: Mutations::CreateCertificationExam
    field :delete_certification_exam, mutation: Mutations::DeleteCertificationExam
    field :update_certification_exam, mutation: Mutations::UpdateCertificationExam
  end
end
