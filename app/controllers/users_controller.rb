class UsersController < ApplicationController

  def show
    @name = current_user.name
    @blogs = current_user.blogs
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
