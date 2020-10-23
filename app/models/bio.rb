class Bio < ApplicationRecord
  has_one :bio_user
  has_one :user, :through => :bio_user
end
