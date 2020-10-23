class Project < ApplicationRecord
  has_one :project_user
  has_one :user, :through => :project_user
  has_many :comment_projects
  has_many :comments, :through => :comment_projects
  has_many :post_projects
  has_many :posts, :through => :post_projects
end
