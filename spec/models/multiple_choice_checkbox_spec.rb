require 'rails_helper'

RSpec.describe MultipleChoiceCheckbox, type: :model do
  it 'defines the edit method' do
    expect(MultipleChoiceCheckbox.method_defined?(:edit)).to be true
  end

  it 'defines the complete method' do
    expect(MultipleChoiceCheckbox.method_defined?(:complete)).to be true
  end

  it 'defines the view_completed_question method' do
    expect(MultipleChoiceCheckbox.method_defined?(:view_completed_question)).to be true
  end

  it 'defines the is_valid method' do
    expect(MultipleChoiceCheckbox.method_defined?(:is_valid)).to be true
  end

  describe '#is_valid' do
    it 'returns "Valid" when all conditions are met' do
      question = MultipleChoiceCheckbox.new
      choice_info = {
        '1' => { txt: 'Choice 1', correct: true },
        '2' => { txt: 'Choice 2', correct: true },
        '3' => { txt: 'Choice 3', correct: true }
      }

      expect(question.is_valid(choice_info)).to eq('Valid')
    end
  end
end
