class Test < ApplicationRecord
  has_many :users

  def self.list_test_by_category(title_category)
    tests_by_category(title_category).pluck(:title)
  end  
end
