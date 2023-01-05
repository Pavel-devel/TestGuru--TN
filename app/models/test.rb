class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id

  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users, dependent: :destroy
  has_many :questions, dependent: :destroy

  def self.list_test_by_category(category)
    joins(:category)
      .where(categories: { title: category } )
      .order(title: :desc)
      .pluck(:title)
  end  
end
