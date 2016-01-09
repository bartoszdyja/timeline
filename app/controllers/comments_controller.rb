class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    @comment.article_id=params[:article_id]
    @comment.save
  end

  def show
  end

  private

  def comments_params
    params.require(:comment).permit(:content)
  end
end
