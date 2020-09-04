# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.reset_pk_sequence
# Category.reset_pk_sequence
# Answer.reset_pk_sequence
# Question.reset_pk_sequence
# QuesLan.reset_pk_sequence
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

30.times do
    Category.create(
        name: Faker::ProgrammingLanguage.name
    )
end

10.times do
    User.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                email: Faker::Internet.email,
                password:"abc123")
end

10.times do
    Question.create(
        title: Faker::ProgrammingLanguage.name,
        content: Faker::Quote.famous_last_words,
        user: [user_1,user_2].sample
    )
end

10.times do
    x = rand(0...10)
    Answer.create(
        content: Faker::ProgrammingLanguage.name,
        question: Question.all[x],
        user: [user_1,user_2].sample
    )
end

10.times do
    x = rand(0...12)
    y = rand(0...30)
    QuesLan.create(question: Question.all[x],
                   category: Category.all[y]
    )
end



puts "done"