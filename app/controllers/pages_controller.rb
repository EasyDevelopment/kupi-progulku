class PagesController < ApplicationController
  def main
  end

  def men
    @stage = Stage.last
    aid = @stage.men_album
    @vk = VkontakteApi::Client.new
    @photos = @vk.photos.get gid: '20651541', aid: aid
  end

  def women
  end
end
