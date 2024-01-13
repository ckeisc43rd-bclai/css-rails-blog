class AddUserIdToBlogPost < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_posts, :user_id, :integer
  end
end
