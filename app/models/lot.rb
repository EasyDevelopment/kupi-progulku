# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  pid        :string(255)
#  photo      :string(255)
#  photo_big  :string(255)
#  name       :string(255)
#  link       :string(255)
#  slogan     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lot < ActiveRecord::Base
  attr_accessible :link, :name, :photo, :photo_big, :pid, :slogan
end
