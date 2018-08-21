class UsersController < ApplicationController

  #Profile of the User - other user functions (Sign In etc. handled by Devise)
  def show
    @user = User.find(params[:id])
  end
end
