class CreateExamTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_topics, id: :uuid do |t|
      t.uuid :certification_exam_id, null: false
      t.string :name, null: false, limit: 255
      t.timestamps
    end

    add_foreign_key :exam_topics, :certification_exams
    add_index :exam_topics, :name, unique: true, name: 'exam_topics_name_unique_idx'
  end
end
