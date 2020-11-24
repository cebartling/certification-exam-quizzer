require 'rails_helper'

RSpec.describe ExamQuestionResponse, type: :model do
  it { should belong_to(:exam_question) }
end
