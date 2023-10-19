class ChangeCounterColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :posts_counter, :post_counter
    rename_column :posts, :comments_counter, :comment_counter
    rename_column :posts, :likes_counter, :like_counter
  end
end
