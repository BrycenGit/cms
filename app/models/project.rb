class Project < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates :description, presence: true
  validates :name, presence: true
end
