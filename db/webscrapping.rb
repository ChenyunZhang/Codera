require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'

# html_2 = open("https://official-joke-api.appspot.com/jokes/programming/ten")
# doc_2_temp = Nokogiri::HTML(html_2)
# doc_2 = JSON.parse(doc_2_temp)
# question_arr = doc_2.map{ |joke|joke["setup"]}
# answer_arr =  doc_2.map{ |joke|joke["punchline"]}

def questions
    html = open("https://hackr.io/blog/programming-interview-questions")
    doc = Nokogiri::HTML(html)
    # html = JSON.parse(doc)
    temp_arr = doc.css("body").css("div.content").css("strong").text
    arr = temp_arr.split("Question: ").select{|question| question != ""}.join.split("Answer:")
    # binding.pry
    # 0
end

