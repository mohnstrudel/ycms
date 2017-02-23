class RemoveColumnsFromPosts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :title
  	remove_column :posts, :body
  end
end
