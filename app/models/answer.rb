# frozen_string_literal: true

# Comment for `class Answer`
class Answer < ApplicationRecord
  belongs_to :question
end
