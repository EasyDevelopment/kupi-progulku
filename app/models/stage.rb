# == Schema Information
#
# Table name: stages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  men_album   :string(255)
#  women_album :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Stage < ActiveRecord::Base
  attr_accessible :men_album, :name, :women_album
end
