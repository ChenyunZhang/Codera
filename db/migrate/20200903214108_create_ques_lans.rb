class CreateQuesLans < ActiveRecord::Migration[6.0]
  def change
    create_table :ques_lans do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
