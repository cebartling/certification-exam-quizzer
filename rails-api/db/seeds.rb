# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'seeds/certification_exams/certification_exams_seed'
require 'seeds/exam_questions/exam_questions_seed'
require 'seeds/exam_topics/exam_topics_seed'
require 'seeds/users/users_seed'

Seeds::Users::UsersSeed.execute
Seeds::CertificationExams::CertificationExamsSeed.execute
Seeds::ExamTopics::ExamTopicsSeed.execute
Seeds::ExamQuestions::ExamQuestionsSeed.execute
