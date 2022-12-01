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
  { title: 'Route - 1', level: 1, category: categories[0], author: users[0] },
  { title: 'Route - 2', level: 2, category: categories[1], author: users[1] },
  { title: 'Route - 3', level: 3, category: categories[2], author: users[2] }
])

questions = Question.create!([
  { title: 'Do you have a cargo category license?', correct: true, test: tests[0] },
  { title: 'Do you have a passenger category license?', correct: true, test: tests[1] },
  { title: 'Do you have a cars category license?', correct: true, test: tests[2] }
])

answers = Answer.create!([
  { title: 'I have cargo license', question: questions[0] },
  { title: 'I have passenger license', question: questions[1] },
  { title: 'I have cars license', question: questions[2] }
])

tests_users = TestsUser.create!([
  { test: tests[0], user: users[0] },
  { test: tests[1], user: users[1] },
  { test: tests[2], user: users[2] }
])
