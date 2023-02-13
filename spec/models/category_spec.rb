require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has many tests' do
    should have_many :tests
  end
end
