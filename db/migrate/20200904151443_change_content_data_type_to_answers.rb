class ChangeContentDataTypeToAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column :answers, :content, :text
  end
end
