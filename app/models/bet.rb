# coding: utf-8
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

  validate :check_bet
  before_save :normalize_value


  private

  def check_bet
    if Lot.find(self.lot_id).current_bet && self.value <= Lot.find(self.lot_id).current_bet.value
      errors.add :bet, 'Ставка должна быть больше предыдущей'
    end
  end

  def normalize_value
    if self.value % 50 > 0
      self.value = (self.value / 50 + 1) * 50
    else
      self.value
    end
  end

end
