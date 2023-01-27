class Post < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :user
  end
end
