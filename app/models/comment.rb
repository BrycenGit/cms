class Comment < ApplicationRecord
  has_one :comment_project
  has_one :project, :through => :comment_project
  has one :comment_user
  has one :user, :through => :comment_user
end
