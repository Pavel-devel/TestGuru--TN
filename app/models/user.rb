class User < ApplicationRecord
  has_many :tests

  def list_test_by_level(level)
    tests.level(level)
  end
end
