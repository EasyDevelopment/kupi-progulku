class Lot < ActiveRecord::Base
  belongs_to :stage
  attr_accessible :link, :male, :name, :photo, :photo_big, :pid, :slogan, :stage_id
end
