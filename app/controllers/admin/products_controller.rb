module Admin
  class ProductsController < ApplicationController
    def new
      @product = Product.new
    end
  end
end
