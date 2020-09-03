# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
QuesLan.destroy_all
User.destroy_all
Category.destroy_all

# User.reset_pk_sequence

user_1 = User.create(first_name:"Donald",last_name:"Duck",email: "abc@abc.com",password:"abc123")
user_2 = User.create(first_name:"Minnie",last_name:"Duck",email: "efg@efg.com",password:"abc123")

question_1 = Question.create(title:"why", content: "How old are you?", user:user_1)
question_2 = Question.create(title:"YYY", content: "What's my name?", user:user_2)
question_3 = Question.create(title:"aaa", content: "How are you?", user:user_1)
question_4 = Question.create(title:"cccc", content: "What's my age?", user:user_2)

category_1 = Category.create(name: "Python")
category_2 = Category.create(name: "Ruby")

ques_lan_1 = QuesLan.create(question: question_1, category: category_1)
ques_lan_2 = QuesLan.create(question: question_2, category: category_2)
ques_lan_3 = QuesLan.create(question: question_3, category: category_2)
ques_lan_4 = QuesLan.create(question: question_4, category: category_2)
ques_lan_5 = QuesLan.create(question: question_4, category: category_1)




puts "done"