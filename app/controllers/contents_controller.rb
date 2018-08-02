class ContentsController < ApplicationController

  def index
    @contents = Content.order("created_at DESC")
  end

  def new
  end

  def destroy
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.destroy
    end
  end

  def create
    @contents = Content.create(content_params)
    redirect_to user_path(content_params[:user_id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    if content.user_id == current_user.id
      content.update(tweet_params)
    end
  end


  def cotent_params
    params.permit(:text).merge(user_id: current_user.id)
  end

end
