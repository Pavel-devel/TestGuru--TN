# frozen_string_literal: true

# Comment for `class Category`
class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  default_scope { order(title: :asc, created_at: :desc) }

  validates :title, presence: true
end
