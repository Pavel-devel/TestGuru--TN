# frozen_string_literal: true

# Comment for `class Answer`
class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true

  validate :validate_max_answer

  private

  def validate_max_answer
    errors.add(:max_answer) if question.answers.size > 3
  end
end
