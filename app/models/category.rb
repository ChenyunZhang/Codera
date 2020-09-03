class Category < ApplicationRecord
    has_many :ques_lans
    has_many :questions, through: :ques_lans
end
