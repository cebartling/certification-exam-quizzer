class CertificationExam < ApplicationRecord
  has_many :exam_topics
  has_many :exam_questions
end
