class UsersController < ApplicationController

  def show
    @user = current_user
    my_posts = @user.posts
    liked_posts = @user.find_up_voted_items
    @posts = (my_posts + liked_posts).sort_by(&:created_at)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :date_of_birth, :profile_pic)
  end
end
