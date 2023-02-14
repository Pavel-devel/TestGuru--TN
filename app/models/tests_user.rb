# frozen_string_literal: true

# Comment for `class TestsUser`
class TestsUser < ApplicationRecord
  belongs_to :user
  belongs_to :test
end
