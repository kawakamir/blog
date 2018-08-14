class CommentsController < ApplicationController
  before_action :set_group

  def create
    @comment = @content.comments.create(comment_params)
    redirect_to content_path(@content)
  end

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end

  def set_group
    @content = Content.find(params[:content_id])
  end
end
