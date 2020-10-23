class Comment < ApplicationRecord
  has_one :comment_project
  has_one :project, :through => :comment_project
  has_one :comment_post
  has_one :post, :through => :comment_post
  has one :comment_user
  has one :user, :through => :comment_user
end
