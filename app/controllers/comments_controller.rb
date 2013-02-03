class CommentsController < InheritedResources::Base
  include ActiveModel::MassAssignmentSecurity
  attr_accessible :body, :commenter, :lot_id

  def create
    @comment = Comment.new(comment_params)   
    @comment.save

    redirect_to @comment.lot
    # if @comment.save
    #   redirect_to @comment.lot, notice: 'Комментарий принят'
    # else
    #   redirect_to @comment.lot, alert: @comment.errors.messages.values.join(', ')
    # end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :commenter, :lot_id)
  end

end
