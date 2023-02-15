# frozen_string_literal: true

users = User.create([
                      { name: 'User - 1' },
                      { name: 'User - 2' },
                      { name: 'User - 3' }
                    ])

categories = Category.create([
                               { title: 'Category - 1' },
                               { title: 'Category - 2' },
                               { title: 'Category - 3' }
                             ])

tests = Test.create([
                      { title: 'Test - 1', level: 1,
                        category: categories[0], author: users[0] },
                      { title: 'Test - 2', level: 2,
                        category: categories[1], author: users[1] },
                      { title: 'Test - 3', level: 3,
                        category: categories[2], author: users[2] },
                      { title: 'Test - 4', level: 4,
                        category: categories[0], author: users[0] },
                      { title: 'Test - 5', level: 5,
                        category: categories[1], author: users[1] },
                      { title: 'Test - 6', level: 6,
                        category: categories[2], author: users[2] },
                      { title: 'Test - 7', level: 7,
                        category: categories[0], author: users[0] }
                    ])

questions = Question.create([
                              { title: 'Question - 1', test: tests[0] },
                              { title: 'Question - 2', test: tests[1] },
                              { title: 'Question - 3', test: tests[2] },
                              { title: 'Question - 4', test: tests[3] },
                              { title: 'Question - 5', test: tests[4] },
                              { title: 'Question - 6', test: tests[5] },
                              { title: 'Question - 7', test: tests[6] }
                            ])
Answer.create([
                { title: 'Answer - 1', correct: true, question: questions[0] },
                { title: 'Answer - 2', correct: true, question: questions[1] },
                { title: 'Answer - 3', correct: true, question: questions[2] },
                { title: 'Answer - 4', correct: true, question: questions[3] },
                { title: 'Answer - 5', correct: true, question: questions[4] },
                { title: 'Answer - 6', correct: true, question: questions[5] },
                { title: 'Answer - 7', correct: true, question: questions[6] }
              ])

TestsUser.create([
                   { test: tests[0], user: users[0] },
                   { test: tests[1], user: users[1] },
                   { test: tests[2], user: users[2] }
                 ])
