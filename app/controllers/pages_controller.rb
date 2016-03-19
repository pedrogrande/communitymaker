class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin

  def admin
    if current_user.has_role? :admin
      @users = User.all
    else
      redirect_to root_path
    end
  end

  def contact
  end

  def about
  end
end
