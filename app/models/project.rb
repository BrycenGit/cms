class Project < ApplicationRecord
  has_one :project_user
  has_one :user, :through => :project_user
  has_many :comment_projects, dependent: :destroy
  has_many :comments, :through => :comment_projects, dependent: :destroy
  has_many :post_projects, dependent: :destroy
  has_many :posts, :through => :post_projects, dependent: :destroy
end
