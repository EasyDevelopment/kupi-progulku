# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Stage.destroy_all
Lot.destroy_all

stage = Stage.create name: 'VI', men_album: '166045569', women_album: '166045491'

men_aid = stage.men_album
women_aid = stage.women_album

vk = VkontakteApi::Client.new

photos =  vk.photos.get(gid: '20651541', aid: men_aid)
photos += vk.photos.get(gid: '20651541', aid: women_aid)
photos.each do |photo|
  Lot.where(pid: photo.pid.to_s).first_or_create do |lot|
    lot.stage = stage
    lot.male = (photo.aid.to_s == men_aid)
    lot.photo = photo.src
    lot.photo_big = photo.src_big

    name_and_link, lot.slogan = photo.text.split('<br>')
    lot.link = name_and_link.scan(/http.*/).first
    lot.name = name_and_link.gsub( /http.*/, '').strip
  end
end