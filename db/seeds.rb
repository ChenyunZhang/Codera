# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'activerecord-reset-pk-sequence'
require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'

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

################### random programming question
# html = open("https://hackr.io/blog/programming-interview-questions")
# doc = Nokogiri::HTML(html)
# # html = JSON.parse(doc)
# temp_arr = doc.css("body").css("div.content").css("strong").text
# arr = temp_arr.split("Question: ").select{|question| question != ""}.join.split("Answer:")

################### random programming joke and answers #################
html_2 = open("https://official-joke-api.appspot.com/jokes/programming/ten")
doc_2_temp = Nokogiri::HTML(html_2)
doc_2 = JSON.parse(doc_2_temp)
question_arr = doc_2.map{ |joke|joke["setup"]}
answer_arr =  doc_2.map{ |joke|joke["punchline"]}

# html_1 = open("https://official-joke-api.appspot.com/jokes/programming/ten")
# doc_1_temp = Nokogiri::HTML(html_1)
# doc_1 = JSON.parse(doc_1_temp)
# question_arr_1 = doc_1.map{ |joke|joke["setup"]}


user_1 = User.create(first_name:"Chenyun",last_name:"Zhang",email: "morningchenyun@gmail.com",password:"abc123")

5.times do
    User.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,password:"abc123")
end

category_1 =Category.create(name: "C")
category_2 =Category.create(name: "C++")
category_3 =Category.create(name: "Java")
category_4 =Category.create(name: "JavaScript")
category_5 =Category.create(name: "PHP")
category_6 =Category.create(name: "Python")
category_7 =Category.create(name: "R")
category_8 =Category.create(name: "Ruby")
category_9 =Category.create(name: "SQL")
category_10 =Category.create(name: "Other")

    question_1 = Question.create(title: question_arr.first, content: question_arr.first, user: User.all.sample)
    answer_1 = Answer.create(content: answer_arr.first, question: question_1, user: User.all.sample)

    question_2 = Question.create(title: question_arr.second,content: question_arr.second, user: User.all.sample)
    answer_2 = Answer.create(content: answer_arr.second, question: question_2, user: User.all.sample)
    
    question_3 = Question.create(title: question_arr.third,content: question_arr.third, user: User.all.sample)
    answer_3 = Answer.create(content: answer_arr.third, question: question_3, user: User.all.sample)
    
    question_4 = Question.create(title: question_arr.fourth, content: question_arr.fourth, user: User.all.sample)
    answer_4 = Answer.create(content: answer_arr.fourth, question: question_4, user: User.all.sample)
    
    question_5 = Question.create(title: question_arr.fifth,content: question_arr.fifth, user: User.all.sample)
    answer_5 = Answer.create(content: answer_arr.fifth, question: question_5, user: User.all.sample)
    
    question_6 = Question.create(title: question_arr[5],content: question_arr[5], user: User.all.sample)
    answer_6 = Answer.create(content: answer_arr[5], question: question_6, user: User.all.sample)
    
    question_7 = Question.create(title: question_arr[6],content: question_arr[6], user: User.all.sample)
    answer_7 = Answer.create(content: answer_arr[6], question: question_7, user: User.all.sample)
    
    question_8 = Question.create(title: question_arr[7],content: question_arr[7], user: User.all.sample)
    answer_8 = Answer.create(content: answer_arr[7], question: question_8, user: User.all.sample)
    
    question_9 = Question.create(title: question_arr[8],content: question_arr[8], user: User.all.sample)
    answer_9 = Answer.create(content: answer_arr[8], question: question_9, user: User.all.sample)


10.times do
    Answer.create(content: question_arr.sample, question: Question.all.sample, user: User.all.sample)
end

30.times do
    QuesLan.create(question: Question.all.sample,
                category: Category.all.sample
    )
end



puts "🥳"