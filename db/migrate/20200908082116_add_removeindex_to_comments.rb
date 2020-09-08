class AddRemoveindexToComments < ActiveRecord::Migration[5.1]
  def change
    add_index :comments, :content
  end
end
