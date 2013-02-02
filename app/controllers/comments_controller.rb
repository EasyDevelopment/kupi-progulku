class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    
      if @comment.save
        redirect_to @comment.lot, notice: 'Комментарий принят'
      else
        redirect_to @comment.lot, alert: @comment.errors.messages.values.join(', ')
      end
  end

private
  def comment_params
    params.require(:comment).permit(:lot_id)
  end

end
