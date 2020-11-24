class CertificationExam < ApplicationRecord
  has_many :certification_exam_topics
  has_many :exam_questions
end
