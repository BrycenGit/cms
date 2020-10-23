class Post < ApplicationRecord
  has_one :post_user
  has_one :user, :through => :post_user
  has_one :post_project
  has_one :project, :through => :post_project
  has_many :comment_posts
  has_many :comments, :through => :comment_posts
end
