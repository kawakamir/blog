class CommentsController < ApplicationController
  before_action :set_content

  def create
    @comment = @content.comments.create(comment_params)
    redirect_to content_path(@content)
  end

  def show
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment.update(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :content_id).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:content_id])
  end
end
