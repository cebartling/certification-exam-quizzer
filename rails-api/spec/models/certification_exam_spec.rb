require 'rails_helper'

RSpec.describe CertificationExam, type: :model do
  it { should have_many(:certification_exam_topics) }
  it { should have_many(:exam_questions) }
end
