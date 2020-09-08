class CategoriesController < ApplicationController
    before_action :get_category, only: [:show,:index, :update]
    def index
        @categories = Category.all
    end

    def show
    end

    def update
        @category.update(category_param)
    end

    private
    def get_category
        @category = Category.find_by_id(params[:id])
    end

    def category_param
        params.require(:category).permit(:name)
    end


end
