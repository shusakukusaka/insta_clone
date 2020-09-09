class RenameContentColumnToPost < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :content, :title
  end
end
