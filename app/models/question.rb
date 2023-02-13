# frozen_string_literal: true

# Comment for `class Question`
class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy
end
