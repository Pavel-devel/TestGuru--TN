require 'rails_helper'

RSpec.describe Answer, type: :model do
  it 'has many question' do
    should belong_to :question
  end
end
