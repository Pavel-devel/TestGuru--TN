# frozen_string_literal: true

users = User.create([
                      { name: 'Pavel', email: 'pavel@gmail.com', password: 'passwordPavel' },
                      { name: 'Andrew', email: 'andrew@gmail.com', password: 'passwordAndrew' },
                      { name: 'Masha', email: 'masha@gmail.com', password: 'passwordMasha' }
                    ])

categories = Category.create([
                               { title: 'No learning experience' },
                               { title: 'Average learning experience' },
                               { title: 'Great learning experience' }
                             ])

tests = Test.create([
                      { title: 'A1 — Beginner', level: 1,
                        category: categories[0], author: users[0] },
                      { title: 'B1 — Intermediate', level: 2,
                        category: categories[1], author: users[1] },
                      { title: 'C1 — Advanced', level: 3,
                        category: categories[2], author: users[2] }
                    ])

questions = Question.create([
                              { body: 'What is your first name?',
                                test: tests[0] },
                              { body: 'How old are you?',
                                test: tests[0] },
                              { body: 'Experts say that well have to change jobs more often in the future?',
                                test: tests[1] },
                              { body: 'Are you optimistic about the future?',
                                test: tests[1] },
                              { body: 'Whats the difference between "to take an exam" and " to pass an exam" ?',
                                test: tests[2] },
                              { body: 'What is the basic difference between poetry and prose?',
                                test: tests[2] }
                            ])
Answer.create([
                { body: 'My name is Sergey',
                  correct: true, question: questions[0] },
                { body: 'I dont now',
                  correct: true, question: questions[0] },
                { body: 'I am eleven',
                  correct: true, question: questions[1] },
                { body: 'I dont now',
                  correct: true, question: questions[1] },
                { body: 'Most likely, awareness will come, and I will understand what I want more',
                  correct: true, question: questions[2] },
                { body: 'Maybe I wont have a choice',
                  correct: true, question: questions[2] },
                { body: 'I will have a person next to me who will guide me',
                  correct: true, question: questions[2] },
                { body: 'I dont now',
                  correct: true, question: questions[2] },
                { body: ' Yes, I am optimistic',
                  correct: true, question: questions[3] },
                { body: 'I dont now',
                  correct: true, question: questions[3] },
                { body: 'To pass an exam means to take the exam and receive a passing grade',
                  correct: true, question: questions[4] },
                { body: 'I dont now',
                  correct: true, question: questions[4] },
                { body: 'The difference in the freedom to fly fantasy',
                  correct: true, question: questions[5] },
                { body: 'I dont now',
                  correct: true, question: questions[5] }
              ])

TestsUser.create([
                   { test: tests[0], user: users[0] },
                   { test: tests[1], user: users[1] },
                   { test: tests[2], user: users[2] }
                 ])
