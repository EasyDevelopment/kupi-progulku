class Lot < ActiveRecord::Base
  belongs_to :stage
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
end
