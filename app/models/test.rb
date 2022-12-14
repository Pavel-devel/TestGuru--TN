class Test < ApplicationRecord
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.list_test_by_category(category)
    joins("JOIN categories ON tests.category_id = categories.id")
      .where(categories: {title: category} )
      .order("categories.title DESC")
      .pluck("tests.title")
  end  
end
