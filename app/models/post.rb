class Post < ApplicationRecord
  has_one :post_user, dependent: :nullify
  has_one :user, :through => :post_user, dependent: :nullify
  has_one :post_project
  has_one :project, :through => :post_project
  has_many :comment_posts, dependent: :destroy
  has_many :comments, :through => :comment_posts, dependent: :destroy


  
end
