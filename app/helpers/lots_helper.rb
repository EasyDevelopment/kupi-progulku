module LotsHelper
  def link_to_vk lot
    names = lot.name.split(', ')
    if names.size > 1
      links = lot.link.split(', ')
      link_tos = []
      names.each_with_index do |name, i|
        link_tos << link_to(name, links[i], target: '_blank')
      end
      raw link_tos.join('<br>')
    else
      link_to lot.name, lot.link, target: '_blank'
    end
  end
end
