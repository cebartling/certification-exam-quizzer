require 'rails_helper'

RSpec.describe CertificationExamTopic, type: :model do
  it { should belong_to(:certification_exam) }
  it { should have_and_belong_to_many(:exam_questions) }
end
