class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @my_posts = @user.posts.sort_by(&:created_at)
    @liked_posts = @user.find_up_voted_items.sort_by(&:created_at)
    @babies = @user.babies
  end

  def edit
    @user = current_user
    @babies = @user.babies
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :date_of_birth, :profile_pic)
  end
end
