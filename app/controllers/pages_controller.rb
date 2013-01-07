class PagesController < ApplicationController
  def main
  end

  def men
    @lots = Lot.where male: true
  end

  def women
    @lots = Lot.where male: false
  end
end
