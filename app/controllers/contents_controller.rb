class ContentsController < ApplicationController

  def create
    @contents = Content.create(content_params)
    redirect_to user_path(content_params[:user_id])
  end

  def cotent_params
    params.permit(:text).merge(user_id: current_user.id)
  end

end
