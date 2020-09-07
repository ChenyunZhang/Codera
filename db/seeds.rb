# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'activerecord-reset-pk-sequence'

QuesLan.destroy_all
Answer.destroy_all
Question.destroy_all
User.destroy_all
Category.destroy_all

QuesLan.reset_pk_sequence
Answer.reset_pk_sequence
Question.reset_pk_sequence
User.reset_pk_sequence
Category.reset_pk_sequence

user_1 = User.create(first_name:"Donald",last_name:"Duck",email: "abc@abc.com",password:"abc123")
user_2 = User.create(first_name:"Minnie",last_name:"Duck",email: "efg@abc.com",password:"abc123")
user_3=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_4=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_5=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_6=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_7=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_8=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_9=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_10=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_11=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_12=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_13=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
user_14=User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")

category_1 =Category.create(name: "Ruby")
category_2 =Category.create(name: "Java")
category_3 =Category.create(name: "C++")
category_4 =Category.create(name: "Java Script")
category_5 =Category.create(name: "C")
category_6 =Category.create(name: "Python")

30.times do
    Question.create(
        title: "Why is #{Faker::Creature::Animal.name} you favorite animal?",
        content: Faker::Quote.famous_last_words,
        user: [user_1,user_2,user_3,user_4,user_5,user_6,user_7,user_8,user_8,user_9,user_10,user_11,user_12,user_13,user_14].sample
    )
end

10.times do
    Answer.create(
        content: "abitasse platea dictumst.",
        question: [Question.first,Question.second,Question.third,Question.fourth,Question.fifth].sample,
        user: [user_1,user_2].sample
    )
end

30.times do
    QuesLan.create(question: [Question.first,Question.second,Question.third,Question.fourth,Question.fifth].sample,
                    category: [category_1,category_2,category_3,category_4,category_5,category_6].sample
    )
end



puts "🥳"