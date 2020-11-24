require 'csv'

module Seeds
  module ExamQuestions
    class ExamQuestionsSeed

      def self.execute
        puts 'START: Seeding exam_questions table'
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'exam_questions', 'exam_questions.csv'))
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
          exam = CertificationExam.find_by_name(row['exam_name'])
          if exam
            found = ExamQuestion.find_by_question_text(row['question_text'])
            unless found
              new_instance = ExamQuestion.create!({
                                                 certification_exam: exam,
                                                 question_text: row['question_text'],
                                                 single_answer: row['single_answer'],
                                                 difficulty: row['difficulty']
                                               })
              puts "Created new ExamQuestion: #{new_instance.question_text}"
            end
          end
        end
        puts "There are now #{ExamQuestion.count} rows in the exam_questions table"
        puts 'FINISH: Seeding exam_questions table'
      end
    end
  end
end