class CommentsController < InheritedResources::Base
  include ActiveModel::MassAssignmentSecurity
  attr_accessible :body, :commenter, :lot_id

  def create
    @comment = Comment.new(comment_params)   
    @comment.save
    redirect_to @comment.lot
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy 
    redirect_to @comment.lot
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :commenter, :lot_id)
  end
end
