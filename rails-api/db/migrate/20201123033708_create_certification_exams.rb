class CreateCertificationExams < ActiveRecord::Migration[6.0]
  def change
    create_table :certification_exams, id: :uuid do |t|
      t.string :name, null: false, limit: 1024
      t.string :exam_code, null: false, limit: 50
      t.timestamps
    end

    add_index :certification_exams, :name, unique: true, name: 'certification_exams_name_unique_idx'
  end
end
