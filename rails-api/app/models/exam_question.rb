class ExamQuestion < ApplicationRecord
  belongs_to :certification_exam
  has_and_belongs_to_many :certification_exam_topics
end
