class CreatePostProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :post_projects do |t|
      t.belongs_to :post, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
