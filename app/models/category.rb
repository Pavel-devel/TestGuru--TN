# frozen_string_literal: true

# Comment for `class Category`
class Category < ApplicationRecord
  has_many :tests, dependent: :destroy
end
