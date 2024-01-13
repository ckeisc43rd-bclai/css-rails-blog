class RemoveUserFromBlogPost < ActiveRecord::Migration[7.1]
  def change
    remove_column :blog_posts, :user, :string
  end
end
