class ChangeTitleDataTypeToQuestions < ActiveRecord::Migration[6.0]
  def change
    change_column :questions, :content, :text
    change_column :questions, :title, :text
  end
end
