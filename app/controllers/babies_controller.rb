class BabiesController < ApplicationController

  def update
    @user = current_user
    @baby = @user.babies.first
    if @baby.update(baby_params)
      render "users/edit"
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :gender, :height, :weight, :date_of_birth)
  end
end
