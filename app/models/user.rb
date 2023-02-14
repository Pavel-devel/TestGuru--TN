# frozen_string_literal: true

# Comment for `class User`
class User < ApplicationRecord
  has_many :authored_tests, class_name: 'Test', foreign_key: :author_id
  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users

  def list_test_by_level(level)
    tests.where(level: level)
  end
end
