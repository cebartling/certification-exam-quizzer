require 'csv'

module Seeds
  module CertificationExams
    class CertificationExamsSeed

      def self.execute
        puts 'START: Seeding certification_exams table'
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'certification_exams', 'certification_exams.csv'))
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
          found = CertificationExam.find_by_name(row['exam_name'])
          unless found
            new_exam = CertificationExam.create!({name: row['exam_name'], exam_code: row['exam_code'], })
            puts "Created new CertificationExam: #{new_exam.name}"
          end
        end
        puts "There are now #{CertificationExam.count} rows in the certification_exams table"
        puts 'FINISH: Seeding certification_exams table'
      end
    end
  end
end