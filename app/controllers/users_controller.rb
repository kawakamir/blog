class UsersController < ApplicationController

  def show
    user = User.find(current_user.id)
    @name = current_user.name
    @contents = user.contents
  end

end
