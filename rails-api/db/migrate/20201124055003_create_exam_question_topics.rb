class CreateExamQuestionTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_questions_topics, id: false do |t|
      t.belongs_to :certification_exam_topics
      t.belongs_to :exam_questions
    end
  end
end
