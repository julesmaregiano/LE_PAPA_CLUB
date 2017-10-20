class BabiesController < ApplicationController

  def edit
    @user = current_user
    @baby = Baby.find(params[:id])
  end

  def update
    @user = current_user
    @baby = Baby.find(params[:id])
    if @baby.update(baby_params)
      redirect_to(@user)
    else
      render :edit
    end
  end

  def new
    @user = current_user
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(baby_params)
    @user = current_user
    @baby.user = @user
    if @baby.save
      redirect_to(@user)
    else
      render :new
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:user, :user_id, :name, :gender, :height, :weight, :date_of_birth)
  end
end
