class Post < ApplicationRecord
  has_one :post_user
  has_one :post, :through => :post_user
  has_many :comment_posts
  has_many :comments, :through => :comment_posts
end
