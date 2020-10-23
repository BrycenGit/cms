class BioUser < ApplicationRecord
  belongs_to :bio
  belongs_to :user
end
