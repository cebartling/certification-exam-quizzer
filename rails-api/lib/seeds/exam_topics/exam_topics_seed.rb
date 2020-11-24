require 'csv'

module Seeds
  module ExamTopics
    class ExamTopicsSeed

      def self.execute
        puts 'START: Seeding exam_topics table'
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'exam_topics', 'exam_topics.csv'))
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
          exam = CertificationExam.find_by_name(row['exam_name'])
          if exam
            found = ExamTopic.find_by_name(row['topic_name'])
            unless found
              new_topic = ExamTopic.create!({certification_exam: exam, name: row['topic_name']})
              puts "Created new ExamTopic: #{new_topic.name}"
            end
          end
        end
        puts "There are now #{ExamTopic.count} rows in the exam_topics table"
        puts 'FINISH: Seeding exam_topics table'
      end

    end
  end
end