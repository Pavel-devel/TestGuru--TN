require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates name' do
    should validate_presence_of :name
  end

  it 'has many to tests_users and tests' do
    should have_many :tests_users
    should have_many :tests
  end
end
