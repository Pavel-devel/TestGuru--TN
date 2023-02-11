class User < ApplicationRecord
  belongs_to :author, class_name: 'Test'

  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users

  validates :name, presence: true, uniqueness: true

  def list_test_by_level(level)
    tests.where(level: level)
  end
end
