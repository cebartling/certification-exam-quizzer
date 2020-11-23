class CreateExamQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_questions, id: :uuid do |t|
      t.uuid :certification_exam_id, null: false
      t.string :question_text, null: false
      t.boolean :single_answer, null: false, default: true
      t.integer :difficulty, null: false, default: 1

      t.timestamps
    end

    add_foreign_key :exam_questions, :certification_exams
  end
end
