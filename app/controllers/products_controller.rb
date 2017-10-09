class ProductsController < ApplicationController
  def index
    @products = Product.all.where(type: params[:type_id])
  end
end
