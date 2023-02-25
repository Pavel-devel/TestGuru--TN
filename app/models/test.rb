# frozen_string_literal: true
class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users
  has_many :questions, dependent: :destroy

  validates :title, presence: true,
                    uniqueness: { scope: :level,
                                  message: :uniq_title_with_level }
  validates :level, numericality: { greater_than_or_equal_to: 0,
                                    only_integer: true }

  scope :easy_level, -> { where(level: 1) }
  scope :average_level, -> { where(level: 2..4) }
  scope :difficult_level, -> { where(level: 5..Float::INFINITY) }

  scope :all_with_category, ->(category) {
    joins(:category)
      .where(categories: { title: category })
      .order(title: :desc)
  }

  def self.all_with_category_array(category)
    all_with_category(category).pluck(:title)
  end
end
