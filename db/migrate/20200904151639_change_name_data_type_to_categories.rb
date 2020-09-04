class ChangeNameDataTypeToCategories < ActiveRecord::Migration[6.0]
  def change
    change_column :categories, :name, :text
  end
end
