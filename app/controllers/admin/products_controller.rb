module Admin
  class ProductsController < ApplicationController
    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to root_path, notice: 'Product created.'
      else
        render 'new'
      end
    end

    protected
    def product_params
      params.require(:product).permit(:category_id, :name)
    end
  end
end
