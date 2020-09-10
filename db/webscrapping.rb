require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'

html_2 = open("https://official-joke-api.appspot.com/jokes/programming/ten")
doc_2_temp = Nokogiri::HTML(html_2)
doc_2 = JSON.parse(doc_2_temp)
question_arr = doc_2.map{ |joke|joke["setup"]}
answer_arr =  doc_2.map{ |joke|joke["punchline"]}
binding.pry
0