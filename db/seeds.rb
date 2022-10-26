# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create!([
  { name: 'Driver - 1' },
  { name: 'Driver - 2' },
  { name: 'Driver - 3' }
])

categories = Category.create!([
  { title: :Cargo },
  { title: :Passenger },
  { title: :Cars } 
])

tests = Test.create!([
  { title: :Route1, level: 1, category_id: categories[0], author_id: users[0] },
  { title: :Route2, level: 2, category_id: categories[1], author_id: users[1] },
  { title: :Route3, level: 3, category_id: categories[2], author_id: users[2] }
])

questions = Question.create!([
  { title: 'Do you have a cargo category license?', correct: true, test_id: tests[0] },
  { title: 'Do you have a passenger category license?', correct: true, test_id: tests[1] },
  { title: 'Do you have a cars category license?', correct: true, test_id: tests[2] }
])

answers = Answer.create!([
  { title: 'I have cargo license', question_id: questions[0] },
  { title: 'I have passenger license', question_id: questions[1] },
  { title: 'I have cars license', question_id: questions[2] }
])
