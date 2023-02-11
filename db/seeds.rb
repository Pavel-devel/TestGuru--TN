users = User.create!([
                       { name: 'User - 1' },
                       { name: 'User - 2' },
                       { name: 'User - 3' }
                     ])

categories = Category.create!([
                                { title: 'Category - 1' },
                                { title: 'Category - 2' },
                                { title: 'Category - 3' }
                              ])

tests = Test.create!([
                       { title: 'Test - 1', level: 1,
                         category: categories[0], author: users[0] },
                       { title: 'Test - 2', level: 2,
                         category: categories[1], author: users[1] },
                       { title: 'Test - 3', level: 3,
                         category: categories[2], author: users[2] }
                     ])

questions = Question.create!([
                               { title: 'Question - 1',
                                 correct: true, test: tests[0] },
                               { title: 'Question - 2',
                                 correct: true, test: tests[1] },
                               { title: 'Question - 3',
                                 correct: true, test: tests[2] }
                             ])
Answer.create!([
                 { title: 'Answer - 1', question: questions[0] },
                 { title: 'Answer - 2', question: questions[1] },
                 { title: 'Answer - 3', question: questions[2] }
               ])

TestsUser.create!([
                    { test: tests[0], user: users[0] },
                    { test: tests[1], user: users[1] },
                    { test: tests[2], user: users[2] }
                  ])
