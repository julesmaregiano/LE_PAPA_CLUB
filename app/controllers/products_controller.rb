class ProductsController < ApplicationController
  def index
    @products = Product.all.where(type: params[:type_id])
    @types = Type.first(3)
  end
end
