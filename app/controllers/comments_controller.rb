class CommentsController < ApplicationController
  before_action :set_content

  def create
    @comment = @content.comments.create(comment_params)
    html = render_to_string partial: 'contents/comments', locals: { comment: @comment }
    render :json => {:html => html}
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id).merge(content_id: @content.id)
  end

  def set_content
    @content = Content.find(params[:content_id])
  end
end
