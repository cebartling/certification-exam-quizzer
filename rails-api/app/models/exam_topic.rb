class ExamTopic < ApplicationRecord
  belongs_to :certification_exam
  has_and_belongs_to_many :exam_questions
end
