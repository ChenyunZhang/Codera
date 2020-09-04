class Category < ApplicationRecord
    has_many :ques_lans, dependent: :destroy
    has_many :questions, through: :ques_lans
end
