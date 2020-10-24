class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :bio_users
    drop_table :comment_posts
    drop_table :comment_projects
    drop_table :comment_users
    drop_table :post_projects
    drop_table :post_users
    drop_table :project_users
  end
end
