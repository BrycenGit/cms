class Project < ApplicationRecord
  has_one :project_user
  has_one :project, :through => :project_user
  has_many :comment_projects
  has_many :comments, :through => :comment_projects
end
