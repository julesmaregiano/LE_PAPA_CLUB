class BabiesController < ApplicationController

  def update
    @user = current_user
    @baby = Baby.find(params[:id])
    if @baby.update(baby_params)
      redirect_to(@user)
    else
      render :edit
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :gender, :height, :weight, :date_of_birth)
  end
end
