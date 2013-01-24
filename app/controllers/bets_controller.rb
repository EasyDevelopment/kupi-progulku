# coding: utf-8
class BetsController < InheritedResources::Base
  def create
    @bet = Bet.new(bet_params)

    if @bet.save
      redirect_to @bet.lot, notice: 'Ставка принята'
    else
      redirect_to @bet.lot, alert: @bet.errors.messages.values.join(', ')
    end
  end
  private
  def bet_params
    params.require(:bet).permit(:value, :lot_id)
  end
end
