require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has many tests_users, tests and authored_tests' do
    should have_many :tests_users
    should have_many :tests
    should have_many :authored_tests
  end
end
