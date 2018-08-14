class ContentsController < ApplicationController

  def index
    @contents = Content.order("created_at DESC")
  end

  def new
    @content = Content.new
  end

  def destroy
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.destroy
    end
    redirect_to contents_path
  end

  def create
    @contents = Content.create(content_params)
    redirect_to contents_path
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.update(content_params)
    end
    redirect_to contents_path
  end

  def show
    @content = Content.find(params[:id])
    @comment = Comment.new
    @comments = @content.comments.includes(:user)

  end


  def content_params
    params.require(:content).permit(:text).merge(user_id: current_user.id)
  end

end
