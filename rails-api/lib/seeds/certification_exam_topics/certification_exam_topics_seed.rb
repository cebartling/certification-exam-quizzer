require 'csv'

module Seeds
  module CertificationExamTopics
    class CertificationExamTopicsSeed

      def self.execute
        puts 'START: Seeding certification_exam_topics table'
        csv_text = File.read(Rails.root.join('lib', 'seeds', 'certification_exam_topics', 'certification_exam_topics.csv'))
        csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
        csv.each do |row|
          exam = CertificationExam.find_by_name(row['exam_name'])
          if exam
            found = CertificationExamTopic.find_by_name(row['topic_name'])
            unless found
              new_topic = CertificationExamTopic.create!({
                                                           certification_exam: exam,
                                                           name: row['topic_name']
                                                         })
              puts "Created new CertificationExamTopic: #{new_topic.name}"
            end
          end
        end
        puts "There are now #{CertificationExamTopic.count} rows in the certification_exam_topics table"
        puts 'FINISH: Seeding certification_exam_topics table'
      end
    end
  end
end