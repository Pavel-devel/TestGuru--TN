require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'belongs to test' do
    should belong_to :test
  end

  it 'has many answers' do
    should have_many :answers
  end
end
