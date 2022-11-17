class Test < ApplicationRecord
  has_many :users

  def self.list_test_by_category(category)
    Test.joins("JOIN categories ON tests.category_id = categories.id")
        .where(categories: {title: category} )
        .order("categories.title DESC")
        .pluck("categories.title")
  end  
end
