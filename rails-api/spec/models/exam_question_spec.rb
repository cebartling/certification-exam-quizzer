require 'rails_helper'

RSpec.describe ExamQuestion, type: :model do
  it { should belong_to(:certification_exam) }
  it { should have_and_belong_to_many(:certification_exam_topics) }
end
