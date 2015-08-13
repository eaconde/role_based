# seed users
u1 = User.create(email: 'u1@yahoo.com', password: 'user1234', admin: false)
u2 = User.create(email: 'u2@yahoo.com', password: 'user1234', admin: false)
User.create(email: 'admin@yahoo.com', password: 'admin1234', admin: true)
# seed question
q1 = u1.questions.create(content: "What's your favorite programming language?")
# seed answers
q1.answers.create(user_id: u1.id, content: "I love Ruby on Rails!")
q1.answers.create(user_id: u2.id, content: "Javascript Rocks!")
