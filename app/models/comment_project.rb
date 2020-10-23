class CommentProject < ApplicationRecord
  belongs_to :comment
  belongs_to :project
end
