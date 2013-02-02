# == Schema Information
#
# Table name: lots
#
#  id         :integer          not null, primary key
#  male       :boolean
#  name       :string(255)
#  link       :string(255)
#  slogan     :string(255)
#  pid        :string(255)
#  photo      :string(255)
#  photo_big  :string(255)
#  stage_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lot < ActiveRecord::Base
  belongs_to :stage
  has_many :bets, dependent: :destroy
  has_many :comments, dependent: :destroy


  attr_accessible :link, :male, :name, :photo, :photo_big, :pid, :slogan, :stage_id

  def next
    lots = Lot.where(male: male, stage_id: stage_id)
    lot = lots.where("id > ?", id).first
    lot.present? ? lot : lots.first
  end

  def prev
    lots = Lot.where(male: male, stage_id: stage_id)
    lot = lots.where("id < ?", id).last
    lot.present? ? lot : lots.last
  end

  def current_bet
    bets.last
  end

  def prev_bets
    Bet.where(lot_id: self.id).order('created_at desc').offset(1).limit(4)
  end
end


