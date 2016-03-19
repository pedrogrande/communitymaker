class UsersController < ApplicationController
  def make_admin
    @user = User.find(params[:id])
    @user.add_role :admin
    redirect_to :back
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :back
  end
end
