class CastPostsCounterType < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :posts_counter, :integer, using: 'posts_counter::integer'
  end

  def down
    change_column :users, :posts_counter, :string
  end
end
