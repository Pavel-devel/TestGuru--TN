# frozen_string_literal: true

# Comment for `class User`
class User < ApplicationRecord
  has_many :authored_tests, class_name: 'Test', foreign_key: :author_id
  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users

  scope :list_test_by_level, ->(level) { Test.where(level: level) }

  validates :email, :password, presence: true
end
