class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers, dependent: :destroy
  
  has_many :ques_lans, dependent: :destroy
  has_many :categories, through: :ques_lans
  
  accepts_nested_attributes_for :categories
  validates :title, :content, presence: true


  def category_name
     a = self.categories.pluck(:name)
  end
  
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category_attribute[:name] = category_attribute[:name].titleize
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end


end
