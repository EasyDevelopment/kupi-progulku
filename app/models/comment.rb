class Comment < ActiveRecord::Base
  belongs_to :lot
  attr_accessible :body, :commenter
end
