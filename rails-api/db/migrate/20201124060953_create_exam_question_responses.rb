class CreateExamQuestionResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_question_responses, id: :uuid do |t|
      t.uuid :exam_question_id, null: false
      t.string :response_text, null: false
      t.text :explanation_text, null: true
      t.boolean :correct, null: false, default: false

      t.timestamps
    end

    add_foreign_key :exam_question_responses, :exam_questions
  end
end
