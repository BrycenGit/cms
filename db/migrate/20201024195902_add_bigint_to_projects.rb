class AddBigintToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :user_id, :bigint
    add_column :comments , :user_id, :bigint
    add_column :comments , :post_id, :bigint
    add_column :posts , :user_id, :bigint
    add_column :posts , :project_id, :bigint
  end
end
