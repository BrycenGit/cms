class Post < ApplicationRecord
  belongs_to :project
  has_one :user, :through => :project
  has_many :comments, dependent: :destroy
  validates :body, presence: true
end
