class CommentsController < ApplicationController

def cerate
  @lot = Lot.find(params[:id])
  @comment = @lot.comments.create(params[:comment])
  redirect_to lot_path(@lot)
end

end
