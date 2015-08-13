u1 = User.create(email: 'u1@yahoo.com', password: 'user1234', admin: false)
u2 = User.create(email: 'u2@yahoo.com', password: 'user1234', admin: false)
User.create(email: 'admin@yahoo.com', password: 'admin1234', admin: true)

q1 = u1.questions.create(content: "What's your favorite programming language?")

Answer.create(user_id: u1.id, question_id: q1.id, content: "I love Ruby on Rails!").save
Answer.create(user_id: u2.id, question_id: q1.id, content: "Javascript Rocks!").save
