class TypesController < ApplicationController
  def index
    @products = Product.all
    @types = Type.all
  end
end
