require 'rails_helper'

RSpec.describe Answer, type: :model do
  it 'has many to question' do
    should belong_to :question
  end
end
