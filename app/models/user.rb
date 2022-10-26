class User < ApplicationRecord
  has_many :tests

  def test_level(level)
    tests.level(level)
  end
end
