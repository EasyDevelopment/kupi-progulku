task :update_lots => :environment do
  stage = Stage.last
  vk = VkontakteApi::Client.new
  men_aid = stage.men_album
  women_aid = stage.women_album
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

end