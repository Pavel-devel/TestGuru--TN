require 'rails_helper'

RSpec.describe Test, type: :model do
  it 'belongs to category and author' do
    should belong_to :category
    should belong_to :author
  end

  it 'has many to tests_users, tests, users' do
    should have_many :tests_users
    should have_many :questions
    should have_many :users
  end
end
