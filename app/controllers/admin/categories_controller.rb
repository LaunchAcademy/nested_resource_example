module Admin
  class CategoriesController < ApplicationController
    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to root_path
      else
        render 'new'
      end
    end

    protected
    def category_params
      params.require(:category).permit(:name)
    end
  end
end
