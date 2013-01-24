class LotsController < InheritedResources::Base
  def show
    @bet = Bet.new(value: resource.current_bet.present? ? resource.current_bet.value + 50 : 100)
  end
end
