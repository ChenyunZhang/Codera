class CategoriesController < ApplicationController
    before_action :get_category, only: [:show,:index]
    def index
        @categories = Category.all
    end

    def show
    end

    private
    def get_category
        @category = Category.find_by_id(params[:id])
    end

    def category_param
        params.require(:category).permit(:content)
    end


end
