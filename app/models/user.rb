class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users

  def list_test_by_level(level)
    Test.joins("INNER JOIN tests_users ON test.id = tests_users.test_id")
      .where(tests_users: {user_id: id}, tests: {level: level})
  end
end
