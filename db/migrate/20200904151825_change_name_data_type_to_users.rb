class ChangeNameDataTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :first_name, :text
    change_column :users, :last_name, :text
    change_column :users, :email, :text
    change_column :users, :password_digest, :text
  end
end
