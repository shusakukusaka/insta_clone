class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, nill: false
    add_column :users, :website, :string
    add_column :users, :introduction, :string
  end
end
