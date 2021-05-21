class UsersController < ApplicationController
 def show
  @user = User.find(params[:id])
  @works = current_user.works
 end
end
