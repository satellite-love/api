class UsersController < ApplicationController
  def create
    @user = User.create
    @user.make_access_token
  end
end
