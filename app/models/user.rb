class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy
  has_many :posts, :through => :projects
  has_many :comments
  has_many :skill_users, dependent: :destroy
  has_many :skills, :through => :skill_users
  has_one :bio, dependent: :destroy
  validates :name, presence: true
end
