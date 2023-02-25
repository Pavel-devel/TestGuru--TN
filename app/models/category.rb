# frozen_string_literal: true
class Category < ApplicationRecord
  default_scope { order(title: :asc, created_at: :desc) }

  has_many :tests, dependent: :destroy

  validates :title, presence: true
end
