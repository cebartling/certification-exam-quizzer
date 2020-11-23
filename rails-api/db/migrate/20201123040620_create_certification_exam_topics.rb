class CreateCertificationExamTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :certification_exam_topics do |t|
      t.uuid :certification_exam_id, null: false
      t.string :name, null: false, limit: 255
      t.timestamps
    end

    add_foreign_key :certification_exam_topics, :certification_exams
    add_index :certification_exam_topics, :name, unique: true, name: 'certification_exam_topics_name_unique_idx'
  end
end
