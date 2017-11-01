class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    render :navbar => false
  end

  def categories
    @categories = Type.all.last(3)
  end
end
