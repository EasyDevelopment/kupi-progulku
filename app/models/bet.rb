# == Schema Information
#
# Table name: bets
#
#  id         :integer          not null, primary key
#  value      :integer
#  lot_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bet < ActiveRecord::Base
  belongs_to :lot
  attr_accessible :value
end
