class CreateExamQuestionTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_questions_topics, id: false do |t|
      t.uuid :exam_question_id, null: false
      t.uuid :exam_topic_id, null: false
    end

    add_foreign_key :exam_questions_topics, :exam_questions
    add_foreign_key :exam_questions_topics, :exam_topics
  end
end
