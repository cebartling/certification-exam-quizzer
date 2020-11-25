module Types
  class QueryType < Types::BaseObject

    field :certification_exams, [Types::CertificationExamType], null: false,
          description: "Retrieve certification exams"

    def certification_exams
      CertificationExam.all
    end


    field :certification_exam, Types::CertificationExamType, null: false,
          description: "Retrieve a specific certification exam"do
      argument :id, ID, required: true
    end

    def certification_exam(id:)
      CertificationExam.find(id)
    end

  end
end
