class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users
  has_many :projects, :through => :project_users
  has_many :post_users
  has_many :posts, :through => :post_users
  has_many :comment_users
  has_many :comments, :through => :comment_users
  has_many :skill_users
  has_many :skills, :through => :skill_users
  has_one :bio_user
  has_one :bio, :through => :bio_user
  validates :name, presence: true
end
