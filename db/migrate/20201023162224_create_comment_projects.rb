class CreateCommentProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_projects do |t|
      t.belongs_to :comment, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
