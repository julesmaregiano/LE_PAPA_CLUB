class TypesController < ApplicationController
  def index
    @products = Product.all
    @types = Type.first(3)
  end
end
