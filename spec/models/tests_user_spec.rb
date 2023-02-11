require 'rails_helper'

RSpec.describe TestsUser, type: :model do
  it 'belongs to user and test' do
    should belong_to :user
    should belong_to :test
  end
end
